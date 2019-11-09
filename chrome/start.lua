

function getDevToolsType()
  w = hs.window.find("DevTools")
  t = w:title()
  print("t",t)
end

function openDevToolsPanel(number) 
  ensureDevTools()
  hs.eventtap.keyStroke("cmd", number)
end
