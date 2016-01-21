--------------------------------------------------------------------------------


local defaults = {
	interval	= 2000,	-- 2 seconds
	cpus		= 8,	-- total cpu's
}

local settings	= table.join(statusd.get_config("cpuusage"), defaults)

local last_stat		= {}
local current_stat	= {}
local first_run		= true

-- this function reads stats from /proc/stat and /proc/uptime and calculates the
-- CPU time used in the measurement interval
local function get_cpuusage()
   local f1 = io.open('/proc/stat', 'r')
   if f1 == nil then return nil end
   s = f1:read("*l")
   f1:close()

   local t = {}
   for tmp in string.gfind(s, "%s+(%d+)") do
      table.insert(t, tonumber(tmp))
   end

   last_stat		= current_stat
   current_stat	= t
   if first_run then
      last_stat	= t
      first_run	= false
   end

   local c = {}
   for i = 1, table.getn(t) do
      table.insert(c, (current_stat[i] - last_stat[i]) / (settings.cpus * settings.interval / 1000))
   end

   return c
end

local timer	= statusd.create_timer()

local function update_cpuusage()
   local t = get_cpuusage()
   if (t == nil) then return nil end
	-- user 1, nice 2, system 3, idle 4, iowait 5, irq 6, softirq 7
	local cpu	= t[1]+t[2]+t[3]+t[5]+t[6]+t[7]
   statusd.inform("cpuusage", string.format("%3d%%", cpu))
	local color = "green"
   if cpu > 80 then color = "red" end
   statusd.inform("cpuusage_hint", color)
   timer:set(settings.interval, update_cpuusage)
end

update_cpuusage()

