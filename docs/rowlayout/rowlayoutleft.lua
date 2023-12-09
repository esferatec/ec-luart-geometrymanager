local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("RowLayout - Left", 600, 400)

local row = gm.GeometryManager():RowLayout(win, gm.DIRECTION.Left, 20, 50, 100, 200, 50)

local button1 = ui.Button(win, "Button 1", 0, 0, 100, 200)
local button2 = ui.Button(win, "Button 2", 0, 0)
local button3 = ui.Button(win, "Button 3")
local button4 = ui.Button(win, "Button 4")

row:add(button1, gm.ALIGNMENT.Stretch)
row:add(button2, gm.ALIGNMENT.Top)
row:add(button3, gm.ALIGNMENT.Bottom)
row:add(button4, gm.ALIGNMENT.Stretch)

function win:onResize()
  row:update()
end

row:apply()

win:show()

repeat
  ui.update()
until not win.visible
