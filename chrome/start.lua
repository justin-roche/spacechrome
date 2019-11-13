
function ensureDevTools() 
  w = hs.window.find("DevTools")
  if w == null then
    hs.eventtap.keyStroke("cmd alt", "i", 500000)
    print("cmd-alt-i")
    ensureUndocked()
  else
    hs.window.focus(w)
  end
  getDevToolsType()
end

function getDevToolsType()
  w = hs.window.find("DevTools")
  t = w:title()
  n = string.find(t, "Node.js")
  print("n", n)
  if n then
    devtoolsType = 'node'
  else
    devtoolsType = 'web'
  end
  print("dt type", devtoolsType, t)
end

