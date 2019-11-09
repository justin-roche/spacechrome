devtoolsState = 'elementsMenu'

-- window management
function toggleDock()
  hs.eventtap.keyStroke("cmd shift", "d", 500000)
end

function ensureUndocked()
  w = hs.window.find("DevTools")
  if w == null then
    print("undocking")
    toggleDock()
  end
end

function ensureDevTools() 
  w = hs.window.find("DevTools")
  if w == null then
    hs.eventtap.keyStroke("cmd alt", "i", 500000)
    ensureUndocked()
  else
    hs.window.focus(w)
    -- hs.eventtap.keyStroke("cmd", "3")
  end
end

function openDevToolsPanel(number) 
  ensureDevTools()
  hs.eventtap.keyStroke("cmd", number)
end

function repeatDown(n)
  for i = 1, n do
    hs.eventtap.keyStroke("","down",50000)
  end
end

function toggleSelect()
  win = hs.window.find("DevTools")
  r = win:frame()
  c = {x = r.x+20, y =r.y+25}
  print("toggle",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
  hs.eventtap.leftClick(c, 500000)
end

invert = {[true] = false, [false]= true}

function openElements() 
  -- openDevToolsPanel("1")
  -- devtoolsState = 'elementsMenu'
  ensurePanel('elements')
  navigationKeyboard()
  mouseLeftHalf()
end


function doConsoleLog() 
  ensurePanel('console')
  tabSelect(11)
  navigationKeyboard()
  mouseCenter()
end

function doApplication() 
  ensurePanel('application')
  tabSelect(4)
  navigationKeyboard()
  mouseCenter()
end

function clickMenuSelect(n)
  hs.eventtap.keyStroke("","space", 50000)
  repeatDown(n)
  -- hs.eventtap.keyStroke("","down")
  hs.eventtap.keyStroke("","space",50000)
end

function doConsoleDefaultLevels()
  ensureConsolePanel()
  tabSelect(9)
  clickMenuSelect(1)
end

function getTextInput(cb)
  c = hs.chooser.new(function(x)
      local y = c:query()
      cb(y)
                     end
  )
  local cscreen = hs.screen.mainScreen()
  local cres = cscreen:frame()
  local p = {
    x = cres.x,
    y = cres.y + (cres.h - 100)
  }
  c:attachedToolbar(nil)
  c:choices(nil)
  c:width(100)
  c:show(p)
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

function tabSelect(n)
  toggleSelect()
  tabRepeat(tostring(n))
end

function doSourcesCode()
  ensureDevTools()
  ensurePanel('sources')
  tabSelect(8)
end

function doNetworkItems() 
  ensureDevTools()
  ensurePanel('network')
  tabSelect(11)
  navigationKeyboard()
  mouseCenter()
end

function ensureConsolePanel()
  ensureDevTools()
  ensurePanel(4)
  -- openDevToolsPanel("4")
  -- devtoolsState = 'consoleMenu'
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

function search() 
  normalKeyboard()
  hs.eventtap.keyStroke("cmd", "f")
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

function navigationKeyboard() 
  -- hs.eventtap.keyStroke("alt", "0")
  hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile \"navigation\"") 
end


function normalKeyboard() 
  -- hs.eventtap.keyStroke("alt", "0")
  hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile \"normal\"") 
end

-- tabs

function backtabRepeat(n)
  for i = 1, n do
    hs.eventtap.keyStroke("shift","tab")
  end
end

function tabRepeat(n, d)
  -- if d ~= nil then
  --   delay = d
  -- else

  for i = 1, n do
    hs.eventtap.keyStroke("","tab", 50000)
  end
end
-- mouse positioning

function mouseCenter()
  w = hs.window.find("DevTools")
  r = w:frame()
  c = {x = r.x+r.w/2, y =r.y+r.h/2}
  -- print("center",c.x,c.y)
  hs.mouse.setAbsolutePosition(c)
end

function mouseLeftHalf()
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
  c = {x = r.x+15, y =r.y+110}
  print("loc",c.x,c.y)
  hs.eventtap.leftClick(c, 500000)
end
