local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("ColumnLayout - Bottom", 600, 400)

local column = gm.GeometryManager():ColumnLayout(win, 2, 5, 100, 100, 250, 250)

local button1 = ui.Button(win, "Button 1", 0, 0, 600, 50)
local button2 = ui.Button(win, "Button 2", 20, 20)
local button3 = ui.Button(win, "Button 3")
local button4 = ui.Button(win, "Button 4")

column:add(button1, gm.ALIGNMENT.Left)
column:add(button2, gm.ALIGNMENT.Center)
column:add(button3, gm.ALIGNMENT.Right)
column:add(button4, gm.ALIGNMENT.Stretch)

function win:onResize()
	column:update()
end

column:apply()

win:show()

repeat
	ui.update()
until not win.visible