
-- navigation mode
function enterConsolePanel() 
  ensureDevTools()
  ensurePanel('console')
  tabSelect(11)
  navigationKeyboard()
  mouseCenter()
end

function enterElementsPanel() 
  ensureDevTools()
  ensurePanel('elements')
  navigationKeyboard()
  mouseLeftHalfDevtools()
end

-- normal mode
function enterSourcesPanel()
  ensureDevTools()
  ensurePanel('sources')
  tabSelect(8)
end

function enterNetworkPanel() 
  ensureDevTools()
  print("ensured devtools")
  ensurePanel('network')
end

function enterApplicationPanel() 
  ensureDevTools()
  ensurePanel('application')
  tabSelect(4)
  navigationKeyboard()
  mouseCenter()
end


