networkPanelState = {filter = false}

chrome_networkMenuItems = {
  {cons.cat.action, '', 'i', "Items", {
     {cons.act.func, function()
        clickNetworkRequests()
        navigationKeyboard()
                     end
  }}},
  {cons.cat.action, '', 'f', "Filter", {
     {cons.act.func, function()
        print("state",networkPanelState.filter)
        -- backtabRepeat(8)
        toggleSelect()
        tabRepeat(6)

        hs.eventtap.keyStroke("", "space")
        networkPanelState.filter = invert[networkPanelState.filter]
        if networkPanelState.filter == true then
          tabRepeat(8)
          hs.eventtap.keyStroke("command", "a")
          hs.eventtap.keyStroke("", "delete")
        else
         toggleSelect()
         clickNetworkRequests()
        end
                     end
  }}},

  {cons.cat.action, '', 'r', "Record", {
     {cons.act.func, function()
        executeCommand("show search", 2)
        hs.eventtap.keyStroke("", "escape",500000)
        tabRepeat(5)
        hs.eventtap.keyStroke("", "space",500000)
        -- tabRepeat(7)
                     end
  }}},
  {cons.cat.action, '', 's', "Search", {
     {cons.act.func, function()
        executeCommand("show search", 2)
        -- hs.eventtap.keyStroke("", "escape",500000)
        -- executeCommand("show search", 2)
        -- tabRepeat(8)
     end }
  }},
}

