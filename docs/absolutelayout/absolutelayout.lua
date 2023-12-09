local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("AbsoluteLayout", 600, 400)

local absolute = gm.GeometryManager():AbsoluteLayout(win)

local button1 = ui.Button(win, "Button 1")
local button2 = ui.Button(win, "Button 2", 100, 100, 200, 100)
local button3 = ui.Button(win, "Hide", 10, 300, 200, 30)
local button4 = ui.Button(win, "Show", 240, 300, 200, 30)

absolute:add(button1, 50, 50)
absolute:add(button2)

function button3:onClick()
  absolute:hide()
end

function button4:onClick()
  absolute:show()
end

absolute:apply()

win:show()

repeat
  ui.update()
until not win.visible
