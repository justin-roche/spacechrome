
function ensureDevTools() 
  w = hs.window.find("DevTools")
  if w == null then
    hs.eventtap.keyStroke("cmd alt", "i", 500000)
    ensureUndocked()
  else
    hs.window.focus(w)
  end
  getDevToolsType()
end

function getDevToolsType()
  w = hs.window.find("DevTools")
  t = w:title()
  print("t",t)
end

panelNames = {
  ['elements'] = 1,
  ['memory'] = 2,
  ['sources'] = 3,
  ['console'] = 4,
  ['performance'] = 5,
  ['network'] = 6,
  ['application'] = 7,
}

function ensurePanel(name)
  number = panelNames[name]
  print("ensuring panel", name, number)
  hs.eventtap.keyStroke("cmd", tostring(number))
  devtoolsState = "chrome_"..name.."Menu"
  print("set devtools state", devtoolsState)
end
