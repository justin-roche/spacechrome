
function enterElementsPanel() 
  ensureDevTools()
  ensurePanel('elements')
  navigationKeyboard()
  mouseLeftHalf()
end

function enterSourcesPanel()
  ensureDevTools()
  ensurePanel('sources')
  tabSelect(8)
end

function enterConsolePanel() 
  ensureDevTools()
  ensurePanel('console')
  tabSelect(11)
  navigationKeyboard()
  mouseCenter()
end

function enterNetworkPanel() 
  ensureDevTools()
  ensurePanel('network')
  tabSelect(11)
  navigationKeyboard()
  mouseCenter()
end

function enterApplicationPanel() 
  ensureDevTools()
  ensurePanel('application')
  tabSelect(4)
  navigationKeyboard()
  mouseCenter()
end


