
chrome_mouseMenuItems = {

  {cons.cat.action, '', 'h', "Left Half", {
     {cons.act.func,
      function() 
        mouseLeftHalf()
        hs.eventtap.leftClick(c, 500000)
      end
     },
  }},
  {cons.cat.action, '', 'l', "Right Half", {
     {cons.act.func,
      function() 
        mouseRightHalf()
        hs.eventtap.leftClick(c, 500000)
      end
     },
  }}
}
