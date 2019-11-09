
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

