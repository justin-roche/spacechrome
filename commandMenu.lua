
  chrome_commandMenuItems = {

    {cons.cat.action, '', ';', "Command Palette", {
       {cons.act.func,
        function() 
          hs.eventtap.keyStroke("cmd shift", "p")
        end
    }}},
  }
