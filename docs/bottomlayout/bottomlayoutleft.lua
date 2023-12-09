local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("BottomLayout - Left", 600, 400)

local bottom = gm.GeometryManager():BottomLayout(win, gm.DIRECTION.Left, 20, { 10, 10, 10, 10 }, 50)

local button1 = ui.Button(win, "Button 1", 0, 0, 100, 150)
local button2 = ui.Button(win, "Button 2", 0, 0)
local button3 = ui.Button(win, "Button 3")

bottom:add(button1)
bottom:add(button2, gm.ALIGNMENT.Center)
bottom:add(button3, gm.ALIGNMENT.Top)

function win:onResize()
	bottom:update()
end

bottom:apply()

win:show()

repeat
	ui.update()
until not win.visible
