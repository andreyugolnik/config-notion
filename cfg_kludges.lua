--
-- browser tag (#1)
--
defwinprop {
    class    = "google-chrome",
    instance = "google-chrome",
    role     = "browser",
    target   = "web"
}
defwinprop {
    class    = "Google-chrome-stable",
    instance = "Google-chrome-stable",
    role     = "browser",
    target   = "web"
}
defwinprop {
    class    = "Firefox",
    -- instance = "Navigator",
    -- role = "browser",
    target   = "web"
}
defwinprop {
    class		= "Firefox",
    instance	= "Dialog",
    target	= "web",
    float	= true
}
defwinprop {
    class		= "Transmission",
    instance	= "transmission",
    target		= "web"
}


--
-- console tag (#2)
--
--defwinprop {
--class		= "Smplayer",
--instance	= "smplayer",
--target	= "video",
--}


--
-- msg tag (#3)
--
defwinprop {
    class		= "Thunderbird",
    instance	= "Mail",
    --role		= "3pane",
    target	= "mail"
}
defwinprop {
    class		= "Thunderbird",
    instance	= "Calendar",
    target	= "mail",
    float	= true
}
--[[defwinprop {
class		= "Thunderbird-bin",
instance	= "thunderbird-bin",
name		= "XNote",
target	= "mail",
float		= true,
}--]]


defwinprop {
    class		= "Gajim.py",
    instance	= "gajim",
    float		= true,
    target		= "im"
}
defwinprop {
    class		= "Gajim.py",
    instance	= "gajim",
    role		= "roster",
    target		= "im"
}

defwinprop {
    class		= "URxvt",
    instance	= "WeeChat",
    target	= "mail"
}

defwinprop {
    class    = "Telegram",
    instance = "Telegram",
    --role     = "",
    target   = "conversation"
}
defwinprop {
    class    = "Skype-bin",
    instance = "skype-bin",
    role     = "ConversationsWindow",
    target   = "conversation"
}
defwinprop {
    class    = "Skype-bin",
    instance = "skype-bin",
    --role     = "",
    target   = "roster"
}


--
-- dev tag (#4)
--
defwinprop {
    class    = "Gvim",
    instance = "gvim",
    lazy_resize    = true,
    transient_mode = "off",
    transparent    = false,
    --userpos=true,
    --jumpto=true,
    target   = "dev"
}
defwinprop {
    class    = "jetbrains-android-studio",
    instance = "sun-awt-X11-XFramePeer",
    target   = "dev"
}
defwinprop {
    class    = "jetbrains-android-studio",
    instance = "sun-awt-X11-XDialogPeer",
    target   = "dev",
    float    = true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "???",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "???",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    --	role		= "",
    target	= "dev"
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Project Manager",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Find",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Environment settings",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Configure editor",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Result",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Goto line",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Add library",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Confirmation",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Warning",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Create new class",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Add to project?",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Multiple selection",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Question",
    target	= "dev",
    float		= true
}
defwinprop {
    class		= "Codeblocks",
    instance	= "codeblocks",
    name		= "Information",
    target	= "dev",
    float		= true
}


--
-- Spine related
--
defwinprop {
    class     = "com-esotericsoftware-spine-editor-launcher-Launcher",
    instance  = "sun-awt-X11-XFramePeer",
    --role      = "gimp-image-new",
    --target    = "gfx",
    float     = true
}

--
-- gimp tag (#5)
--
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-image-window",
    target    = "gimp",
    acrobatic = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "",
    target    = "gimp",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-toolbox",
    target    = "gimp-toolbox-scratchpad"
}
defwinprop {
    class     = "Gimp",
    instance  = "script-fu",
    role      = "gimp-script-fu",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-image-new",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-file-open",
    target    = "gfx",
    max_size  = {w=1024,h=768},
    min_size  = {w=800,h=600},
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-file-save",
    target    = "gfx",
    max_size  = {w=1024,h=768},
    min_size  = {w=800,h=600},
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-file-export",
    target    = "gfx",
    max_size  = {w=1024,h=768},
    min_size  = {w=800,h=600},
    float     = true
}

defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-dock",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-preferences",
    target    = "gfx",
    float     = true
}

defwinprop {
    class     = "Resynth",
    instance  = "resynth",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-query-box",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-drawable-offset",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-desaturate-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-hue-saturation-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-operation-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-layer-scale",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-scale-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-colorize-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-brightness-contrast-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-toolbox-color-dialog",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-image-scale",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-rotate-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-gegl-tool",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-grid-configure",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-layer-resize",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-image-resize",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-image-properties",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-layer-new",
    target    = "gfx",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp",
    role      = "gimp-message-dialog",
    target    = "gfx",
    float     = true
}
defwinprop {
    class     = "Gimp",
    instance  = "gimp-lqr-plugin",
    target    = "gfx",
    float     = true
}

--
-- vm tag (#6)
--
defwinprop {
    class     = "VirtualBox",
    instance  = "Qt-subapplication",
    transient_mode = "off",
    lazy_resize    = true,
    target    = "vm"
}


--
-- video editing tag (#7)
--
defwinprop {
    class     = "Cinelerra",
    instance  = "cinelerra",
    --role      = "gimp-image-new",
    target    = "main"
    --float     = true
}
defwinprop {
    class     = "Blender",
    instance  = "Blender",
    target    = "main"
}


--
-- floating windows
--
defwinprop {
    class		= "SPAZ",
    instance	= "SPAZ",
    float		= true
}
defwinprop {
    class		= "Shatter.bin.x86",
    instance	= "Shatter.bin.x86",
    float		= true
}
defwinprop {
    class		= "Torchlight.bin.x86_64",
    instance	= "Torchlight.bin.x86_64",
    float		= true
}
defwinprop {
    class		= "toystoriesed",
    instance	= "toystoriesed",
    float		= true
}
defwinprop {
    class		= "stopwatch",
    instance	= "stopwatch",
    float		= true
}
defwinprop {
    class		= "Qalculate-gtk",
    instance	= "qalculate-gtk",
    float		= true
}
defwinprop {
    class		= "Keepassx",
    instance	= "keepassx",
    target		= "keepassx-scratchpad"
}
defwinprop {
    class		= "Goldendict",
    instance	= "goldendict",
    --	float		= true,
    target		= "*scratchws*"
}
defwinprop {
    class		= "Wpa_gui",
    instance	= "wpa_gui",
    float		= true
}
defwinprop {
    class		= "pingus",
    instance	= "pingus",
    float		= true
}
defwinprop {
    class		= "XCalendar",
    instance	= "xcalendar",
    float		= true
}
defwinprop {
    class    = "trine2_linux_32bit",
    instance = "trine2_linux_32bit",
    float    = true
}
defwinprop {
    class    = "XDosEmu",
    instance = "XDosEmu",
    float    = true
}


defwinprop {
    class		= "stalonetray",
    instance	= "stalonetray",
    statusbar	= "systray"
}
defwinprop {
    class		= "CpuStatGraph",
    instance	= "cpustatgraph",
    statusbar	= "systray_cpu",
    max_size = { w = 80, h = 16}
}


--
-- Options to get some programs work more nicely (or at all)
--

defwinprop{
    class = "AcroRead",
    instance = "documentShell",
    acrobatic = true
}


defwinprop{
    class = "Xpdf",
    instance = "openDialog_popup",
    ignore_cfgrq = true
}


-- Put all dockapps in the statusbar's systray, also adding the missing
-- size hints necessary for this to work.
defwinprop{
    is_dockapp = true,
    statusbar = "systray",
    max_size = { w = 64, h = 16},
    min_size = { w = 32, h = 16}
}


-- You might want to enable these if you really must use XMMS.
--[[
defwinprop{
class = "xmms",
instance = "XMMS_Playlist",
transient_mode = "off"
}

defwinprop{
class = "xmms",
instance = "XMMS_Player",
transient_mode = "off"
}
--]]



-- Define some additional title shortening rules to use when the full
-- title doesn't fit in the available space. The first-defined matching
-- rule that succeeds in making the title short enough is used.
ioncore.defshortening("(.*) - Mozilla(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*) - Mozilla", "$1$|$1$<...")
ioncore.defshortening("XMMS - (.*)", "$1$|...$>$1")
ioncore.defshortening("[^:]+: (.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("[^:]+: (.*)", "$1$|$1$<...")
ioncore.defshortening("(.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*)", "$1$|$1$<...")

