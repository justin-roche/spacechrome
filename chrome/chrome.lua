devtoolsState = 'elementsMenu'
devtoolsType = 'web'

function getDevToolsType()
  w = hs.window.find("DevTools")
  t = w:title()
  print("t",t)
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
