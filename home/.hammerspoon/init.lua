hs.hotkey.bind({ "alt", "shift" }, "R", function()
    hs.reload()
end)

hs.loadSpoon("MouseFollowsFocus")
spoon.MouseFollowsFocus:start()

local function setDarkMode(on)
    local script = io.open("./scripts/appearance.applescript", "r"):read("*all")
    local formatted = string.format(script, on and "true" or "false")
    hs.osascript.applescript(formatted)
end

hs.hotkey.bind({ "cmd" }, "F1", function()
    setDarkMode(true)
end)
hs.hotkey.bind({ "cmd" }, "F2", function()
    setDarkMode(false)
end)

local function openApp(name)
    local app = hs.application.get(name)

    hs.application.launchOrFocus(name)

    if app:allWindows() == 0 then
        app.newWindow()
    end
end

local function openSafari()
    openApp("Safari")
end
local function openObsidian()
    openApp("Obsidian")
end
local function openTerminal()
    openApp("Ghostty")
end

hs.hotkey.bind({ "alt" }, "S", openSafari)
hs.hotkey.bind({ "alt" }, "O", openObsidian)
hs.hotkey.bind({ "alt" }, "T", openTerminal)
