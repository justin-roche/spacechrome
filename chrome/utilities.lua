
function getTextInput(cb)
  c = hs.chooser.new(function(x)
      local y = c:query()
      cb(y)
                     end
  )
  local cscreen = hs.screen.mainScreen()
  local cres = cscreen:frame()
  local p = {
    x = cres.x,
    y = cres.y + (cres.h - 100)
  }
  c:attachedToolbar(nil)
  c:choices(nil)
  c:width(100)
  c:show(p)
end

