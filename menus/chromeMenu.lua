local elementsMenu = "elementsMenu"
local hammerspoonMenu = "elementsMenu"
local consoleMenu = "consoleMenu"
local commandsMenu = "commandsMenu"
local panelsMenu = "panelsMenu"
local mouseMenu = "mouseMenu"
local chrome_mouseMenu = "chrome_mouseMenu"
local networkMenu = "networkMenu"
local sourcesMenu = "sourcesMenu"
local chrome_windowsMenu = "chrome_windowsMenu"

chromeMenuItems = {
  {cons.cat.action, '', 'q', "close devtools", {
     {cons.act.func,
      function() 
        print("closing")
        hs.eventtap.keyStroke("cmd","w")
      end
  }}},

  {cons.cat.action, '', 'R', 'Reload', {
     {cons.act.func,
      function() 
        hs.eventtap.keyStroke("command", "r")
      end
     }
  }},
  {cons.cat.action, 'shift', 'R', 'Hard Reload', {
     {cons.act.func,
      function() 
        hs.eventtap.keyStroke("command shift", "r")
      end
     }
  }},
  {cons.cat.action, '', 'E', 'Elements', {
     {cons.act.func,
      function() 
        enterElementsPanel()
      end
     }
  }},
  {cons.cat.action, '', 'S', 'Sources', {
     {cons.act.func,
      function() 
        enterSourcesPanel()
      end
     }
  }}, 
  {cons.cat.action, '', 'C', 'Console', {
     {cons.act.func,
      function() 
        enterConsolePanel()
      end
     }
  }},
  {cons.cat.action, 'shift', 'C', "console drawer", {
     {cons.act.func,
      function() 
        executeCommand("drawer", 1)
      end
  }}},
  {cons.cat.action, '', 'N', 'Network', {
     {cons.act.func,
      function() 
        enterNetworkPanel()
      end
     }
  }},
  {cons.cat.action, '', 'A', 'Application', {
     {cons.act.func,
      function() 
        enterApplicationPanel()
      end
     }
  }},
  {cons.cat.action, '', 'l', "go line", {
     {cons.act.func,
      function() 
        hs.eventtap.keyStroke("control","g")
      end
  }}},

  {cons.cat.submenu, '', 'W', 'Windows', {
     {cons.act.menu, chrome_windowsMenu}
  }},
  {cons.cat.submenu, '', 'M', 'Mouse', {
     {cons.act.menu, chrome_mouseMenu}
  }},
  {cons.cat.action, '', ';', 'Command', {
     {cons.act.func,
      function() 
        -- doCommand()
        hs.eventtap.keyStroke("cmd shift", "p")
      end
     }
  }},
}
