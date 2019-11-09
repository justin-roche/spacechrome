chrome_consoleNavMenuItems = {
  {cons.cat.submenu, '', 'a', "add breakpoint", {
     {cons.act.func, function()
        hs.eventtap.keyStroke("command", "b")
        -- navigationKeyboard()
     end }
  }},
}

