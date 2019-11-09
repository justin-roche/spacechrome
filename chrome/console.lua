function doConsoleDefaultLevels()
  ensureConsolePanel()
  tabSelect(9)
  clickMenuSelect(1)
end

function sourcesEval()
  local handler = function(x)
    print("handler got result", x)
    hs.eventtap.keyStroke("", "escape")
    hs.eventtap.keyStrokes(x)
    hs.eventtap.keyStroke("", "return")
    navigationKeyboard()
    hs.eventtap.keyStroke("shift", "tab")
  end
  getTextInput(handler)
end

