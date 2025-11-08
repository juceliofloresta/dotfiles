hs.hotkey.bind({ "alt", "shift" }, "R", function()
    hs.reload()
end)

hs.loadSpoon("MouseFollowsFocus")

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

hs.hotkey.bind({ "cmd" }, "F6", function()
    hs.caffeinate.lockScreen()
end)

hs.hotkey.bind({ "cmd", "shift" }, "F6", function()
    hs.caffeinate.systemSleep()()
end)

local function openApp(name)
    local app = hs.application.get(name)

    hs.application.launchOrFocus(name)

    if app:allWindows() == 0 then
        app.newWindow()
    end
end

local function bindApp(mods, key, appName)
    hs.hotkey.bind(mods, key, function()
        openApp(appName)
    end)
end

bindApp({ "alt" }, "B", "Bitwarden")
bindApp({ "alt" }, "K", "Amazon Kindle")
bindApp({ "alt" }, "O", "Obsidian")
bindApp({ "alt" }, "S", "Safari")
bindApp({ "alt" }, "T", "Ghostty")

spoon.MouseFollowsFocus:start()
