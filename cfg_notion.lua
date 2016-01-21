--
-- Ion main configuration file
--
-- This file only includes some settings that are rather frequently altered.
-- The rest of the settings are in cfg_ioncore.lua and individual modules'
-- configuration files (cfg_modulename.lua).
--
-- When any binding and other customisations that you want are minor, it is
-- recommended that you include them in a copy of this file in ~/.ion3/.
-- Simply create or copy the relevant settings at the end of this file (from
-- the other files), recalling that a key can be unbound by passing 'nil'
-- (without the quotes) as the callback. For more information, please see
-- the Ion configuration manual available from the Ion Web page.
--

-- Set default modifiers. Alt should usually be mapped to Mod1 on
-- XFree86-based systems. The flying window keys are probably Mod3
-- or Mod4; see the output of 'xmodmap'.
--META="Mod1+"
META="Mod4+"

-- $ xmodmap -e "keycode 117 = Super_R"
-- $ xmodmap -e "add mod3 = Super_R"
-- $ xmodmap -e "remove mod4 = Super_L"
-- $ xmodmap -e "add mod4 = Super_L"
ALTMETA="Mod1+"

-- Terminal emulator
XTERM="urxvt"

-- Some basic settings
ioncore.set{
    -- Maximum delay between clicks in milliseconds to be considered a
    -- double click.
    --dblclick_delay=250,

    -- For keyboard resize, time (in milliseconds) to wait after latest
    -- key press before automatically leaving resize mode (and doing
    -- the resize in case of non-opaque move).
    --kbresize_delay=1500,

    -- Opaque resize?
    --opaque_resize=false,
    opaque_resize=true,

    -- Movement commands warp the pointer to frames instead of just
    -- changing focus. Enabled by default.
    --warp=true,

    -- disable follow mouse focus
    --mousefocus='sloppy',
    mousefocus='disabled',

    -- Switch frames to display newly mapped windows
    --switchto=true,

    -- Default index for windows in frames: one of 'last', 'next' (for
    -- after current), or 'next-act' (for after current and anything with
    -- activity right after it).
    --frame_default_index='next',

    -- Auto-unsqueeze transients/menus/queries.
    --unsqueeze=true,

    -- Display notification tooltips for activity on hidden workspace.
    --screen_notify=true,
}


-- Load default settings. The file cfg_defaults loads all the files
-- commented out below, except mod_dock. If you do not want to load
-- something, comment out this line, and uncomment the lines corresponding
-- the the modules or configuration files that you want, below.
-- The modules' configuration files correspond to the names of the
-- modules with 'mod' replaced by 'cfg'.
dopath("cfg_defaults")

-- Load configuration of the Ion 'core'. Most bindings are here.
--dopath("cfg_ioncore")

-- Load some kludges to make apps behave better.
--dopath("cfg_kludges")

-- Define some layouts.
--dopath("cfg_layouts")

-- Load some modules. Bindings and other configuration specific to modules
-- are in the files cfg_modulename.lua.
--dopath("mod_query")
--dopath("mod_menu")
--dopath("mod_tiling")
--dopath("mod_statusbar")
--dopath("mod_dock")
--dopath("mod_sp")

dopath("dans_bindings")


-- allow to switch off/on all bindings by pressing meta + f8
--dopath("switch_bindings")




-- some useful keybindings
defbindings("WScreen", {
	bdoc("Switch to previous window or workspace."),
	kpress(META.."Escape", "ioncore.goto_previous()"),

	bdoc("Lock X session."),
	kpress(META.."F12", "ioncore.exec_on(_, 'alock -bg image:file=/home/andrey/graphics/screen-locked.jpg none -auth pam')"),

	bdoc("Capture screen"),
	kpress("Print", "ioncore.exec_on(_, \"scrot '%Y.%m.%d-%H%M%S-$wx$h.png' -e 'mv $f ~/' 2>/dev/null\")"),
	kpress("Shift+Print", "ioncore.exec_on(_, \"scrot -s '%Y.%m.%d-%H%M%S-$wx$h.png' -e 'mv $f ~/' 2>/dev/null\")"),

	bdoc("Mute/Unmute Sound."),
	kpress("AnyModifier+XF86AudioMute", "ioncore.exec_on(_, 'aosd_volume mute')"),
	bdoc("Increase Volume."),
	kpress("AnyModifier+XF86AudioRaiseVolume", "ioncore.exec_on(_, 'aosd_volume volup')"),
	bdoc("Decrease Volume."),
	kpress("AnyModifier+XF86AudioLowerVolume", "ioncore.exec_on(_, 'aosd_volume voldown')"),

	bdoc("Suspend to ram."),
	kpress("XF86Sleep", "ioncore.exec_on(_, 's2ram')"),

	bdoc("Suspend to disk."),
	kpress("Shift+XF86Sleep", "ioncore.exec_on(_, 's2disk')"),

    bdoc("Query for command line to execute."),
    kpress(META.."D", "mod_query.query_exec(_)"),

	--
	-- useful bindings
	--
--[[	bdoc("Save client window to file."),
	kpress(META.."PRINTSCREEN", "ioncore.exec_on(_, 'scrot -s -e \"mv $f ~/\"')"),

	bdoc("Save screen to file."),
	kpress("PRINT", "ioncore.exec_on(_, 'scrot -e \"mv $f ~/\"')"),
--]]
})



dopath("min_tabs")
dopath("named_scratchpad")
dopath("app")
dopath("net_client_list")

defbindings("WMPlex.toplevel", {
    --
    -- min_tabs
    --
    bdoc("Tag current object within the frame."),
    kpress(META.."T", "min_tabs_tag_wrapper(_,_sub)", "_sub:non-nil"),

    --
    -- named_scratchpad
    --
    kpress(META.."Shift+V", "named_scratchpad(_, 'video-scratchpad')"),
    kpress(META.."Shift+T", "named_scratchpad(_, 'gimp-toolbox-scratchpad')"),
    kpress(META.."Shift+K", "named_scratchpad(_, 'keepassx-scratchpad');"),

    --
    -- app
    --
    --kpress(META.."Shift+L", "app.byname('xcalendar', 'XCalendar v.4.0')"),
    kpress(META.."Shift+C", "app.byname('qalculate-gtk', 'Qalculate!')"),
    --kpress(META.."Shift+K", "app.byclass('keepassx', 'Keepassx')"),
})


--
-- Common customisations
--

-- Uncommenting the following lines should get you plain-old-menus instead
-- of query-menus.

--defbindings("WScreen", {
--    kpress(ALTMETA.."F12", "mod_menu.menu(_, _sub, 'mainmenu', {big=true})"),
--})
--
--defbindings("WMPlex.toplevel", {
--    kpress(META.."M", "mod_menu.menu(_, _sub, 'ctxmenu')"),
--})

