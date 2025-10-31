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
