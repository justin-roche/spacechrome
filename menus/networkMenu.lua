networkPanelState = {filter = false}

chrome_networkMenuItems = {

  {cons.cat.action, '', 'g', "Group", {
     {cons.act.func, function()
        executeCommand("group network", 2) 
        clickNetworkRequests()
        navigationKeyboard()
                     end
  }}},
  {cons.cat.action, '', 'i', "Items", {
     {cons.act.func, function()
        clickNetworkRequests()
        navigationKeyboard()
                     end
  }}},

  {cons.cat.action, 'shift', 'f', "Toggle Filter", {
     {cons.act.func, function()
        print("state",networkPanelState.filter)
        toggleSelect()
        tabRepeat(6)
        hs.eventtap.keyStroke("", "space")
        -- networkPanelState.filter = invert[networkPanelState.filter]
        -- print("filter", networkPanelState.filter)
        -- if networkPanelState.filter == true then
        -- else
        -- toggleSelect()
        clickNetworkRequests()
        -- end
                     end
  }}},
  {cons.cat.action, '', 'f', "filter", {
     {cons.act.func, function()
        tabSelect(14)
        hs.eventtap.keyStroke("command", "a")
        hs.eventtap.keyStroke("", "delete")
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
     end }
  }},

  {cons.cat.action, '', 'x', "Clear", {
     {cons.act.func, function()
        tabPath("network.clear")
        hs.eventtap.keyStroke("", "space",50000)
     end }
  }},

  {cons.cat.action, '', 'h', "Headers", {
     {cons.act.func, function()
        clickNetworkHeaders()
     end }
  }},
}

