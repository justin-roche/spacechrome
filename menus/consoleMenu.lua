chrome_consoleMenuItems = {
  {cons.cat.action, '', 'c', "command line", {
     {cons.act.func,
      function() 
        ensurePanel('console')
        toggleSelect()
        tabRepeat("12")
        normalKeyboard()
      end
  }}},
  {cons.cat.action, '', 'l', "log", {
     {cons.act.func, enterConsolePanel
  }}},

  {cons.cat.action, '', 'f', "filter", {
     {cons.act.func,
      function() 
        ensurePanel('console')
        tabSelect(8)
      end
  }}},
  {cons.cat.action, '', 'v', "default levels", {
     {cons.act.func,
      function() 
        doConsoleDefaultLevels()
      end
  }}},
  {cons.cat.action, '', 'e', "errors level", {
     {cons.act.func,
      function() 
        doConsoleDefaultLevels()
        -- clickMenuSelect(2)
        clickMenuSelect(3)
        clickMenuSelect(4)
      end
  }}},
  {cons.cat.action, '', 'i', "info level", {
     {cons.act.func,
      function() 
        doConsoleDefaultLevels()
        clickMenuSelect(4)
        clickMenuSelect(5)
      end
  }}},
  {cons.cat.action, '', 'x', "clear", {
     {cons.act.func,
      function() 
        ensurePanel('console')
        hs.eventtap.keyStroke("control","l")
      end
  }}}
}
