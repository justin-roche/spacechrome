
function repeatDown(n)
  for i = 1, n do
    hs.eventtap.keyStroke("","down",50000)
  end
end

function navigationKeyboard() 
  -- hs.eventtap.keyStroke("alt", "0")
  hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile \"navigation\"") 
end

function normalKeyboard() 
  -- hs.eventtap.keyStroke("alt", "0")
  hs.execute("/Library/Application\\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile \"normal\"") 
end

function backtabRepeat(n)
  for i = 1, n do
    hs.eventtap.keyStroke("shift","tab")
  end
end

function tabRepeat(n, d)
  for i = 1, n do
    hs.eventtap.keyStroke("","tab", 50000)
  end
end
