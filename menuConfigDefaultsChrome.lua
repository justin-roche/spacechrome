

spoonPath = hs.spoons.scriptPath()
dofile(spoonPath.."/chromeSupport.lua")

dofile(spoonPath.."/hammerspoonMenu.lua")
dofile(spoonPath.."/elementsMenu.lua")
dofile(spoonPath.."/panelsMenu.lua")
dofile(spoonPath.."/commandMenu.lua")
dofile(spoonPath.."/consoleMenu.lua")
dofile(spoonPath.."/networkMenu.lua")
dofile(spoonPath.."/sourcesMenu.lua")
dofile(spoonPath.."/windowsMenu.lua")

menuShowInFullscreen = false
showMenuBarItem = false
hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0
menuTextEditor = "/usr/local/bin/emacsclient -c"
askpassLocation = "/usr/local/bin/ssh-askpass"
menuNumberOfColumns = 5
menuMinNumberOfRows = 4
menuRowHeight = 20
menuOuterPadding = 50
menuItemFont = "Courier-Bold"
menuItemFontSize = 16
menuItemTextAlign = "left"
menuItemColors = {
    -- The default colors to use.
    default = {
        background = "#000000",
        text = "#aaaaaa"
    },
    -- The colors to use for the Exit menu item
    exit = {
        background = "#000000",
        text = "#C1666B"
    },
    -- The colors to use for the Back menu items
    back = {
        background = "#000000",
        text = "#E76F51"
    },
    -- The colors to use for menu menu items
    submenu = {
        background = "#000000",
        text = "#9A879D"
    },
    -- The colors to use for navigation menu items
    navigation = {
        background = "#000000",
        text = "#4281A4"
    },
    -- The colors to use for empty menu items
    empty = {
        background = "#000000",
        text = "#aaaaaa"
    },
    -- The colors to use for action menu items
    action = {
        background = "#000000",
        text = "#7A3B69"
    },
    menuBarActive = {
        background = "#ff0000",
        text = "#000000"
    },
    menuBarIdle = {
        background = "#00ff00",
        text = "#000000"
    },
    display = {
        background = "#000000",
        text = "#48A9A6"
    }
}

menuHammerToggleKey = {{"cmd", "shift", "ctrl"}, "Q"}

-- Menu Prefixes
menuItemPrefix = {
    action = '↩',
    submenu = '→',
    back = '←',
    exit = 'x',
    navigation = '↩',
    -- navigation = '⎋',
    empty = '',
    display = '',
}

-- Menu item separator
menuKeyItemSeparator = ": "

----------------------------------------------------------------------------------------------------
--------------------------------------- Default Menus ----------------------------------------------
----------------------------------------------------------------------------------------------------

-- Menus
local mainMenu = "mainMenu"

-- Help menu
local helpMenu = "helpMenu"

local elementsMenu = "elementsMenu"
local consoleMenu = "consoleMenu"
local commandsMenu = "commandsMenu"
local panelsMenu = "panelsMenu"
local networkMenu = "networkMenu"
local sourcesMenu = "sourcesMenu"
local windowsMenu = "windowsMenu"

local applicationMenu = "applicationMenu"

menuHammerMenuList = {

    [mainMenu] = {
        parentMenu = nil,
        menuHotkey = {{'command', 'control', 'alt'}, 'm'},
        menuItems = {
          {cons.cat.submenu, '', 'H', 'Hammerspoon', {
             {cons.act.menu, hammerspoonMenu}
          }},
          {cons.cat.submenu, '', 'P', 'Panels', {
             {cons.act.menu, panelsMenu}
          }},
          {cons.cat.submenu, '', 'E', 'Elements', {
             {cons.act.func,
              function() 
                openElements()
              end
             }
          }},
          {cons.cat.submenu, '', ';', 'Commands', {
             {cons.act.func,
              function() 

                hs.eventtap.keyStroke("cmd shift", "p")
                -- devtoolsState = 'consoleMenu'
                -- openDevToolsPanel("4")
              end
             }
          }},
          {cons.cat.submenu, '', 'C', 'Console', {
             {cons.act.func,
              function() 
                doConsoleLog()
              end
             }
          }},
          {cons.cat.submenu, '', 'N', 'Network', {
          {cons.act.menu, networkMenu}
          }},
                    {cons.cat.submenu, '', 'S', 'Sources', {
             {cons.act.menu, sourcesMenu}
          }},
                    {cons.cat.submenu, '', 'W', 'Windows', {
                       {cons.act.menu, windowsMenu}
                    }},

          {cons.cat.action, '', '.', "select", {
             {cons.act.func,
              function() 
                hs.eventtap.keyStroke("command shift","c")
              end
          }}},
          -- {cons.cat.action, '', 'm', "go member", {
          --    {cons.act.func,
          --     function() 
          --       hs.eventtap.keyStroke("command shift","o")
          --     end
          -- }}},
          
          {cons.cat.action, '', 'l', "go line", {
             {cons.act.func,
              function() 
                hs.eventtap.keyStroke("control","g")
              end
          }}},
          {cons.cat.action, '', 'q', "close devtools", {
             {cons.act.func,
              function() 
                print("closing")
                hs.eventtap.keyStroke("cmd","w")
              end
          }}}
        }
    },

    commandsMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = commandMenuItems
    },
    sourcesMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = sourcesMenuItems
    },
    consoleMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = consoleMenuItems
    },

    elementsMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = elementsMenuItems
    },
    panelsMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = panelsMenuItems
    },
    networkMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = networkMenuItems
    },

    windowsMenu = {
      parentMenu = mainMenu,
      menuHotkey = nil,
      menuItems = windowsMenuItems
    },
    hammerspoonMenu = {
        parentMenu = mainMenu,
        menuHotkey = nil,
        menuItems = hammerSpoonMenuItems
    }


}
