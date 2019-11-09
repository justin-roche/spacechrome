hammerSpoonMenuItems = {
  {cons.cat.action, '', 'C', "Hammerspoon Console", {
     {cons.act.func, function() hs.toggleConsole() end }
  }},
  {cons.cat.action, '', 'H', "Hammerspoon Manual", {
     {cons.act.func, function()
        hs.doc.hsdocs.forceExternalBrowser(true)
        hs.doc.hsdocs.moduleEntitiesInSidebar(true)
        hs.doc.hsdocs.help()
     end }
  }},
  {cons.cat.action, '', 'R', "Reload Hammerspoon", {
     {cons.act.func, function() hs.reload() end }
  }},
  {cons.cat.action, '', 'Q', "Quit Hammerspoon", {
     {cons.act.func, function() os.exit() end }
  }},
}
