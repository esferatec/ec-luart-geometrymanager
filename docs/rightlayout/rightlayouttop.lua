local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("RightLayout - Top", 600, 400)

local right = gm.GeometryManager():RightLayout(win, gm.DIRECTION.Top, 5, { 10, 10, 10, 10 }, 150)

local button1 = ui.Button(win, "Button 1", 0, 0, 200, 50)
local button2 = ui.Button(win, "Button 2", 20, 20)
local button3 = ui.Button(win, "Button 3")
local button4 = ui.Button(win, "Button 4")

right:add(button1, gm.ALIGNMENT.Left)
right:add(button2, gm.ALIGNMENT.Center)
right:add(button3, gm.ALIGNMENT.Right)
right:add(button4)

function win:onResize()
  right:update()
end

right:apply()

win:show()

repeat
  ui.update()
until not win.visible
