spoonPath = hs.spoons.scriptPath()
dofile(spoonPath.."/chromeSupport.lua")

panelsMenuItems = {
  {cons.cat.action, '', 'E', "Elements", {
     {cons.act.func,
      function() 
        openDevToolsPanel("1")
        devtoolsState = 'elementsMenu'
        navigationKeyboard()
        mouseLeftHalf()
      end
  }}},
  {cons.cat.action, '', 'C', "Console", {
     {cons.act.func,
      function() 
        devtoolsState = 'consoleMenu'
        openDevToolsPanel("4")
        navigationKeyboard()
        mouseLeftHalf()
      end
  }}},
  {cons.cat.action, '', 'S', "Sources", {
     {cons.act.func,
      function() 
        devtoolsState = 'sourcesMenu'
        openDevToolsPanel("3")
        navigationKeyboard()
        mouseLeftHalf()
      end
  }}},
  {cons.cat.action, '', 'N', "Network", {
     {cons.act.func,
      function() 
        devtoolsState = 'networkMenu'
        navigationKeyboard()
        openDevToolsPanel("6")
      end
  }}},
  {cons.cat.action, '', 'A', "Aoolication", {
     {cons.act.func,
      function() 
        devtoolsState = 'applicationMenu'
        openDevToolsPanel("7")
      end
                                            }}
}}


