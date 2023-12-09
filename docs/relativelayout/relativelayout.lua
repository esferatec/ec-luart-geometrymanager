local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("RelativeLayout", 400, 400)

local relative = gm.GeometryManager():RelativeLayout(win)

local button1 = ui.Button(win, "Button 1", 100, 100, 100, 100)
local button2 = ui.Button(win, "Button 2", 100, 100, 100, 100)

relative:add(button1, 0.5, 0.5, gm.ANCHOR.Center)
relative:add(button2, 0.5, 0.5, gm.ANCHOR.TopLeft)

function win:onResize()
  relative:update()
end

relative:apply()

win:show()

repeat
  ui.update()
until not win.visible
