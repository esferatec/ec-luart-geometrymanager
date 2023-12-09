local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("SingelLayout", 600, 400)

local single = gm.GeometryManager():SingleLayout(win, gm.RESIZE.Both, 20, 100, 300, 200)

local button1 = ui.Button(win, "Button 1")

single:add(button1)

function win:onResize()
  single:update()
end

single:apply()

win:show()

repeat
  ui.update()
until not win.visible
