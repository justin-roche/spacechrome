function ensureUndocked()
  w = hs.window.find("DevTools")
  if w == null then
    print("undocking")
    toggleDock()
  end
end

function toggleDock()
  hs.eventtap.keyStroke("cmd shift", "d", 500000)
end

