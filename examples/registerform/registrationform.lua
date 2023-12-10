local ui = require("ui")
local gm = require("ecluart.gm")

local winMain = ui.Window("RegistrationForm", "dialog", 350, 300)
winMain:status()

local pacLabels = gm.GeometryManager():PackLayout(winMain, false, 10, 25, 80, 200)

local lblName = ui.Label(winMain, "Name:")
local lblPassword = ui.Label(winMain, "Password:")
local lblAge = ui.Label(winMain, "Age:")
local lblEmail = ui.Label(winMain, "Email:")
local lblCountry = ui.Label(winMain, "Country:")

pacLabels:add(lblName, 27)
pacLabels:add(lblPassword, 27)
pacLabels:add(lblAge, 27)
pacLabels:add(lblEmail, 29)
pacLabels:add(lblCountry)

local pacEntrys = gm.GeometryManager():PackLayout(winMain, true, 100, 20, 200, 200)

local etyName = ui.Entry(winMain, "", nil, nil, 10)
local etyPassword = ui.Entry(winMain, "", nil, nil, 120)
local etyAge = ui.Entry(winMain, "", nil, nil, 40)
local etyEmail = ui.Entry(winMain, "", nil, nil, 150)
local cbbCountry = ui.Combobox(winMain, { "Item 1", "Item 2", "Item 3" }, nil, nil, 80)

pacEntrys:add(etyName, 20, gm.ALIGNMENT.Stretch)
pacEntrys:add(etyPassword, 20)
pacEntrys:add(etyAge, 20)
pacEntrys:add(etyEmail, 20, gm.ALIGNMENT.Right)
pacEntrys:add(cbbCountry, 20)

local relButtons = gm.GeometryManager():RelativeLayout(winMain)

local btnApply = ui.Button(winMain, "    OK    ")

relButtons:add(btnApply, 0.5, 0.85, gm.ANCHOR.Center)

function btnApply:onClick()
  ui.info(cbbCountry.height)
end

function winMain:onResize()
  pacLabels:update()
  pacEntrys:update()
  relButtons:update()  
end

pacLabels:apply()
pacEntrys:apply()
relButtons:apply()

ui.run(winMain):wait()
