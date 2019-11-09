chrome_sourcesMenuItems = {
  {cons.cat.submenu, '', 'a', "add breakpoint", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("command", "b")
        -- navigationKeyboard()
     end }
  }},
  {cons.cat.action, '', 'c', "Code", {
     {cons.act.func, function()
        toggleSelect()
        tabRepeat(7)
        navigationKeyboard()
     end }
  }},
  {cons.cat.action, '', 't', "Tabs", {
     {cons.act.func, function()
        toggleSelect()
        tabRepeat(6)
        navigationKeyboard()
     end }
  }},
  {cons.cat.action, '', 'v', "Eval", {
     {cons.act.menu, "chrome_consoleNavMenu"}
  }},
  {cons.cat.action, '', 'f', "Toggle Sidebar", {
     {cons.act.func, function()
        clickCenter()
        backtabRepeat(2)
        hs.eventtap.keyStroke("", "space" )
     end }
  }},
  {cons.cat.action, '', 'w', "Add Watch", {
     {cons.act.func, function()
        toggleSelect()
        tabRepeat(6)
        tabRepeat(5)
        hs.eventtap.keyStroke("", "return" )
        tabRepeat(1)
     end }
  }},
  {cons.cat.action, '', 'e', "Edit Breakpoints", {
     {cons.act.func, function()
        toggleSelect()
        tabRepeat(6)
        tabRepeat(8)
        hs.eventtap.keyStroke("", "l" )
        tabRepeat(1)
        navigationKeyboard()
        hs.eventtap.keyStroke("command option", "b")
     end }
  }},
  {cons.cat.action, '', 'b', "Toggle Breakpoints", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("command", "f8" )
     end }
  }},
  {cons.cat.action, '', 'R', "Resume", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("", "f8" )
     end }
  }},
  {cons.cat.submenu, '', 'H', "Step Over", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("", "f10" )
     end }
  }},
  {cons.cat.submenu, '', 'J', "Step", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("", "f9" )
     end }
  }},
  {cons.cat.submenu, '', 'K', "Step Out", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("shift", "f11" )
     end }
  }},
  {cons.cat.submenu, '', 'L', "Step Into", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("", "f11" )
     end }
  }},
  {cons.cat.action, '', 's', "Search", {
     {cons.act.func, function()
        executeCommand("show search")
     end }
  }},
  {cons.cat.action, '', 'g', "goto line", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("control","g")
     end }
  }},
}

