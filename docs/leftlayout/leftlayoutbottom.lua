local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("LeftLayout- Bottom", 600, 400)

local left = gm.GeometryManager():LeftLayout(win, gm.DIRECTION.Bottom, 5, { 10, 10, 10, 10 }, 150)

local button1 = ui.Button(win, "Button 1", 0, 0, 200, 50)
local button2 = ui.Button(win, "Button 2", 20, 20)
local button3 = ui.Button(win, "Button 3")
local button4 = ui.Button(win, "Button 4")

left:add(button1, gm.ALIGNMENT.Left)
left:add(button2, gm.ALIGNMENT.Center)
left:add(button3, gm.ALIGNMENT.Right)
left:add(button4)

function win:onResize()
	left:update()
end

left:apply()

win:show()

repeat
	ui.update()
until not win.visible
