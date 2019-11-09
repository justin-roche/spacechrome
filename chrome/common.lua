
function tabSelect(n)
  if devtoolsType == 'web' then
    toggleSelect()
  else
    toggleSettings()
  end
  tabRepeat(tostring(n))
end

function toggleSelect()
  win = hs.window.find("DevTools")
  r = win:frame()
  c = {x = r.x+20, y =r.y+25}
  print("toggle",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
  hs.eventtap.leftClick(c, 500000)
end

function toggleSettings()
  win = hs.window.find("DevTools")
  r = win:frame()
  c = {x = (r.x + r.w)-15, y =r.y+25}
  -- print("toggle",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
  hs.eventtap.leftClick(c, 500000)
  backtabRepeat(3)
end

function clickMenuSelect(n)
  hs.eventtap.keyStroke("","space", 50000)
  repeatDown(n)
  -- hs.eventtap.keyStroke("","down")
  hs.eventtap.keyStroke("","space",50000)
end

function executeCommand(s, down)
  hs.eventtap.keyStroke("command shift", "p", 50000 )
  print("c p")
  hs.eventtap.keyStrokes(s,50000)
  if down ~= nil then
    for i = 1, down do
      hs.eventtap.keyStroke("", "down",50000)
    end
  end
  hs.eventtap.keyStroke("", "return",50000)
  print("returned")
end

function search() 
  normalKeyboard()
  hs.eventtap.keyStroke("cmd", "f")
end

