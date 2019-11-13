
function mouseCenter()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+r.w/2, y =r.y+r.h/2}
  -- print("center",c.x,c.y)
  hs.mouse.setAbsolutePosition(c)
end

function mouseRightHalf()
  w = hs.window.focusedWindow()
  r = w:frame()
  c = {x = r.x+(r.w/2+(r.w/4)), y =r.y+r.h/2}
  hs.mouse.setAbsolutePosition(c)
end

function mouseLeftHalf()
  w = hs.window.focusedWindow()
  r = w:frame()
  c = {x = r.x+(r.w/2-(r.w/4)), y =r.y+r.h/2}
  hs.mouse.setAbsolutePosition(c)
end

function mouseLeftHalfDevtools()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+(r.w/2-(r.w/4)), y =r.y+r.h/2}
  hs.mouse.setAbsolutePosition(c)
end

function mouseStyles()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+(r.w)-10, y = r.y+r.h/2}
  hs.mouse.setAbsolutePosition(c)
end

function clickCenter()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+r.w/2, y =r.y+r.h/2}
  print("center",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
end

function clickElements()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+20, y =r.y+200}
  print("loc",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
end

function clickNetworkRequests()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+15, y =r.y+190}
  print("loc",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
end

function clickNetworkHeaders()
  clickNetworkRequests()
  navigationKeyboard()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+r.w-20, y =r.y+200}
  print("loc",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
  backtabRepeat(5)
end
