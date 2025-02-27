--
-- Ion statusbar module configuration file
--


-- Create a statusbar
mod_statusbar.create {
    -- First screen, bottom left corner
    screen = 0,
    pos = 'br',
    -- Set this to true if you want a full-width statusbar
    fullsize = true,
    -- Swallow systray windows
    systray = true,

    -- Template. Tokens %string are replaced with the value of the
    -- corresponding meter. Currently supported meters are:
    --   date          date
    --   load          load average (1min, 5min, 15min)
    --   load_Nmin     N minute load average (N=1, 5, 15)
    --   mail_new      mail count (mbox format file $MAIL)
    --   mail_unread   mail count
    --   mail_total    mail count
    --   mail_*_new    mail count (from an alternate mail folder, see below)
    --   mail_*_unread mail count
    --   mail_*_total  mail count
    --
    -- Space preceded by % adds stretchable space for alignment of variable
    -- meter value widths. > before meter name aligns right using this
    -- stretchable space , < left, and | centers.
    -- Meter values may be zero-padded to a width preceding the meter name.
    -- These alignment and padding specifiers and the meter name may be
    -- enclosed in braces {}.
    --
    -- %filler causes things on the marker's sides to be aligned left and
    -- right, respectively, and %systray is a placeholder for system tray
    -- windows and icons.
    --
    --template=" %date | cpu: %laptopstatus_cpuspeed | mem: %meminfo_mem_free_adj | bat: %laptopstatus_batterypercent %laptopstatus_batterytimeleft | %mpd %filler%systray",

    template = "%colorize".. -- set colors for some bars
        "%wsname_pre %wsname %wsname_post"..
        "%filler"..
        --"%mpd"..
        --" | %weather_tempC°C, %weather_sky"..
        " | %laptopstatus_batterypercent %laptopstatus_batterytimeleft"..
        " | %meminfo_mem_free_adj"..
        --" | %net_essid_wlan0 %net_strength_wlan0 (%net_in_wlan0/%net_out_wlan0) :: %net_in_eth0/%net_out_eth0 :: %net_in_usb0/%net_out_usb0 :: %net_in_ppp0/%net_out_ppp0"..
        " | %net_wlan0"..
        "%net_eth0"..
        "%net_usb0"..
        "%net_ppp0"..
        " | %systray_cpu %laptopstatus_cpuspeed :: %laptopstatus_temperature"..
        " | %systray %date ",

    --template="[ %date || load:% %>load || mail:% %>mail_new/%>mail_total ] %filler%systray",
    --template="[ %date || load: %05load_1min || mail: %02mail_new/%02mail_total ] %filler%systray",
}


-- Launch ion-statusd. This must be done after creating any statusbars
-- for necessary statusd modules to be parsed from the templates.
mod_statusbar.launch_statusd {
    --weather = {
        --station	= "UMMS",
    --},

    net = {
        wlan0 = {
            interface = "wlan0",
            interval = 10*1000,
            show_essid = true,
            template = "%essid %strength (%rx %tx)",
        },
        eth0 = {
            interface = "eth0",
            interval = 10*1000,
            template = ":: %rx %tx"
        },
        usb0 = {
            interface = "usb0",
            interval = 10*1000,
            template = ":: %rx %tx"
        },
        ppp0 = {
            interface = "ppp0",
            interval = 10*1000,
            template = ":: %rx %tx"
        },
    },

    mpd = {
        template = "%artist - %title"
    },

    -- Date meter
    date = {
        -- ISO-8601 date format with additional abbreviated day name
        --date_format = '%a %d.%m.%Y %H:%M',
        date_format = '%b %e, %Y (%a) %H:%M',
        -- Finnish etc. date format
        --date_format='%a %d.%m.%Y %H:%M',
        -- Locale date format (usually shows seconds, which would require
        -- updating rather often and can be distracting)
        --date_format='%c',

        -- Additional date formats.
        --[[
        formats={
        time = '%H:%M', -- %date_time
        }
        --]]
    },

    -- Load meter
    --load = {
        --update_interval=10*1000,
        --important_threshold=1.5,
        --critical_threshold=4.0,
    --},

    -- Mail meter
    --
    -- To monitor more mbox files, add them to the files table.  For
    -- example, add mail_work_new and mail_junk_new to the template
    -- above, and define them in the files table:
    --
    -- files = { work = "/path/to/work_email", junk = "/path/to/junk" }
    --
    -- Don't use the keyword 'spool' as it's reserved for mbox.
    --mail = {
        --update_interval=60*1000,
        --mbox=os.getenv("MAIL"),
        --files={},
    --},
}

