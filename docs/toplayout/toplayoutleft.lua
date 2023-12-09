local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("TopLayout - Left", 600, 400)

local top = gm.GeometryManager():TopLayout(win, gm.DIRECTION.Left, 20, { 10, 10, 10, 10 }, 50)

local button1 = ui.Button(win, "Button 1", 0, 0, 100, 50)
local button2 = ui.Button(win, "Button 2", 0, 0)
local button3 = ui.Button(win, "Button 3")

top:add(button1, gm.ALIGNMENT.Top)
top:add(button2, gm.ALIGNMENT.Center)
top:add(button3)

function win:onResize()
	top:update()
end

top:apply()

win:show()

repeat
	ui.update()
until not win.visible
