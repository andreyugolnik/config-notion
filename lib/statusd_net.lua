-------------------------------------------------------------------------------------------
--
-- PURPOSE:
--   Shows received/transmited data in b/k/m/g on any interface.
--
-- USAGE:
--   Just set any of the following labels on cfg_statusbar.lua: %net_IFACE
--   Example: [ eth0: %net_eth0 ]
--
--   Then configure, write (on cfg_statusbar.lua) something like this, without comments:
--      net = {
--         eth0 = {
--            interval  = 5 * 1000, --> Update interval in ms
--            interface = "eth0",   --> Itnerface to monitoring
--            show_essid = true,    --> Try to get essid
--            template  = "%essid (%rx / %tx)", --> Output string format
                                                -- %rxo, %txo, %essid, %strength
--            fallback  = "?"       --> Fallback string (if no inteface found)
--         },
--      }
--
-- Responsible for bugs and so on: Andrey A. Ugolnik <andrey@ugolnik.info>
--
-------------------------------------------------------------------------------------------


local netconf = table.join(statusd.get_config("net"), {})
local get_net_data = nil
local timers = {}


-- convert bytes to Kb / Mb / Gb
local function bytes2human(bytes)
    local b = tonumber(bytes)
    local out = bytes .. "b"
    if b > 1024*1024*1024 then
        out = string.format("%.3fg", b / (1024*1024*1024))
    else
        if b > 1024*1024 then
            out = string.format("%.2fm", b / (1024*1024))
        else
            if b > 1024 then
                out = string.format("%.1fk", b / 1024)
            end
        end
    end
    return out
end


get_net_data = function (name)
    local iface   = netconf[name].interface
    local sysfile = io.open("/sys/class/net/" .. iface .. "/operstate", 'r')
    local info = {}
    local present = true
    local color = "gray"
    if sysfile ~= nil then
        local operstate = sysfile:read()
        sysfile:close()
        if operstate ~= "down" then
            local tx = io.open("/sys/class/net/" .. iface .. "/statistics/tx_bytes", 'r')
            info.tx = bytes2human(tx:read())
            tx:close()
            local rx = io.open("/sys/class/net/" .. iface .. "/statistics/rx_bytes", 'r')
            info.rx = bytes2human(rx:read())
            rx:close()

            -- determine ESSID by calling /sbin/iwconfig
            local show_essid = netconf[name].show_essid or false
            if show_essid == true then
                local iwconfig = io.popen('/sbin/iwconfig wlan0')
                local line = iwconfig:read()
                local essid_start = line:find("ESSID:")
                info.essid = line:sub(essid_start + 7, line:len() - 3)

                --local f = io.open("/sys/class/net/wlan0/wireless/link")
                --info.strength = string.format("%.0f%%", 100 * f:read() / 70)
                --f:close()
            end

            if info.tx ~= nil and info.rx ~= nil then
                present = false
                color = "green"
            end
        end
    end

    -- fill in %values
    local template = netconf[name].template
    if template ~= nil and present == false then
        template = string.gsub(template, "%%([%w%_]+)", function (x) return(info[x] or "") end)
        template = string.gsub(template, "%%%%", "%%")
        statusd.inform("net_"..name, template)
        statusd.inform("net_"..name.."_hint", color)
    else
        local fallback = netconf[name].fallback
        if fallback ~= nil then
            statusd.inform("net_"..name, fallback)
        else
            statusd.inform("net_"..name, "")
        end
        statusd.inform("net_"..name.."_hint", color)
    end

    local interval = netconf[name].interval or 60 * 1000 -- each minute by default
    timers[name]:set(interval, function() get_net_data(name) end)
end


-- Init
for name in pairs(netconf) do
	timers[name]	= statusd.create_timer()
	get_net_data(name)
end

