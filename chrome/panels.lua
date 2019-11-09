
panelNamesWeb = {
  ['elements'] = 1,
  ['memory'] = 2,
  ['sources'] = 3,
  ['console'] = 4,
  ['performance'] = 5,
  ['network'] = 6,
  ['application'] = 7,
}

panelNamesNode = {
  ['connection'] = 1,
  ['memory'] = 2,
  ['sources'] = 3,
  ['console'] = 4,
  ['profiler'] = 5,
}

function ensurePanel(name)
  print("devtoolstype" , devtoolsType)
  local panels
  if devtoolsType == 'web' then
    panels = panelNamesWeb
  else
    panels = panelNamesNode
  end
  number = panels[name]
  print("ensuring panel", name, number)
  hs.eventtap.keyStroke("cmd", tostring(number))
  devtoolsState = "chrome_"..name.."Menu"
  print("set devtools state", devtoolsState)
end
