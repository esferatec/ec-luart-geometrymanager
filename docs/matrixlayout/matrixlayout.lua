local ui = require("ui")

local gm = require("ecluart.gm")

local win = ui.Window("MatrixLayout", 400, 400)

local matrix = gm.GeometryManager():MatrixLayout(win, 3, 3, gm.RESIZE.Both, 20, 10, 10, 380, 380)

local button1 = ui.Button(win, "Button 1", 0, 0, 100, 100)
local button2 = ui.Button(win, "Button 2", 100, 0, 100, 100)
local button3 = ui.Button(win, "Button 3", 200, 0, 100, 100)
local button4 = ui.Button(win, "Button 4", 300, 0, 100, 100)
local button5 = ui.Button(win, "Button 5")
local button6 = ui.Button(win, "Button 6")
local button7 = ui.Button(win, "Button 7")
local button8 = ui.Button(win, "Button 8")
local button9 = ui.Button(win, "Button 9")

matrix:add(button1)
matrix:add(button2)
matrix:add(button3)
matrix:add(button4)
matrix:add(button5)
matrix:add(button6)
matrix:add(button7)
matrix:add(button8)
matrix:add(button9)

function win:onResize()
  matrix:update()
end

matrix:apply()

win:show()

repeat
  ui.update()
until not win.visible
