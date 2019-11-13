
chrome_elementsMenuItems = {
  {cons.cat.action, '', 'e', "elements", {
     {cons.act.func,
      function() 
        ensurePanel('elements') 
        toggleSelect() 
        tabRepeat(4)
        navigationKeyboard()
        mouseLeftHalfDevtools()
      end
     }
  }},
  {cons.cat.action, '', 'p', "properties", {
     {cons.act.func,
      function() 
        executeCommand("show properties", 1)
        navigationKeyboard()
      end
     }
  }},
  {cons.cat.action, '', 'r', "scroll styles", {
     {cons.act.func,
      function() 
        ensurePanel('elements')
        toggleSelect()
        tabRepeat(10)
        navigationKeyboard()
      end
     }
  }},
  {cons.cat.action, '', 's', "styles", {
     {cons.act.func,
      function() 
        ensurePanel('elements')
        toggleSelect();
        tabRepeat(10)
        navigationKeyboard()
        mouseStyles()
      end
     }
  }},
  {cons.cat.action, '', 'a', "add element style", {
     {cons.act.func,
      function() 
        ensurePanel('elements')
        toggleSelect();
        tabRepeat(10)
        hs.eventtap.keyStroke("", "return")
        mouseStyles()
      end
     }
  }},
  {cons.cat.action, '', 'F', "filter styles", {
     {cons.act.func,
      function() 
        ensurePanel('elements')
        toggleSelect();
        tabRepeat(7)
        mouseStyles()
      end
  }}},
  {cons.cat.action, '', 'x', "clear filter", {
     {cons.act.func,
      function() 
        ensurePanel('elements')
        toggleSelect()
        tabRepeat(7)
        hs.eventtap.keyStroke("", "delete")
        -- toggleSelect();
        tabRepeat(4)
        navigationKeyboard()
      end
  }}},
  {cons.cat.action, '', '1', "domflag 1", {
     {cons.act.func,
      function() 
        hs.eventtap.keyStroke("cmd", "w")
        ensurePanel('elements')
        toggleDock()
        hs.eventtap.keyStroke("control option", "1")
        navigationKeyboard()
      end
}}}}

