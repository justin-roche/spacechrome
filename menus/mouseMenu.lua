
chrome_mouseMenuItems = {

  {cons.cat.action, '', 'h', "Left Half", {
     {cons.act.func,
      function() 
        mouseLeftHalf()
        hs.eventtap.leftClick(c, 500000)
      end
  }}},
}
