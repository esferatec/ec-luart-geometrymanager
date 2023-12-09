local ui = require("ui")
local gm = require("ecluart.gm")

local window_main = ui.Window("Calculator", "dialog", 300, 380)
window_main:status()

local single = gm.GeometryManager():SingleLayout(window_main, gm.RESIZE.X, 10, 10, 280, 50)
local matrix = gm.GeometryManager():MatrixLayout(window_main, 4, 5, gm.RESIZE.Both, 0, 10, 70, 280, 280)

local entry_1 = ui.Entry(window_main, "0")
entry_1.textalign = "right"
entry_1.fontsize = 20
entry_1.fontstyle = {"bold"}

single:add(entry_1)

local button_1 = ui.Button(window_main, "7")
local button_2 = ui.Button(window_main, "8")
local button_3 = ui.Button(window_main, "9")
local button_4 = ui.Button(window_main, "/")

local button_5 = ui.Button(window_main, "4")
local button_6 = ui.Button(window_main, "5")
local button_7 = ui.Button(window_main, "6")
local button_8 = ui.Button(window_main, "X")

local button_9 = ui.Button(window_main, "1")
local button_10 = ui.Button(window_main, "2")
local button_11 = ui.Button(window_main, "3")
local button_12 = ui.Button(window_main, "-")

local button_13 = ui.Button(window_main, "+/-")
local button_14 = ui.Button(window_main, "0")
local button_15 = ui.Button(window_main, ".")
local button_16 = ui.Button(window_main, "+")

local label_17 = ui.Label(window_main, " ")
local label_18 = ui.Label(window_main, " ")
local label_19 = ui.Label(window_main, " ")
local button_20 = ui.Button(window_main, "=")

matrix:add(button_1)
matrix:add(button_2)
matrix:add(button_3)
matrix:add(button_4)
matrix:add(button_5)
matrix:add(button_6)
matrix:add(button_7)
matrix:add(button_8)
matrix:add(button_9)
matrix:add(button_10)
matrix:add(button_11)
matrix:add(button_12)
matrix:add(button_13)
matrix:add(button_14)
matrix:add(button_15)
matrix:add(button_16)
matrix:add(label_17)
matrix:add(label_18)
matrix:add(label_19)
matrix:add(button_20)

function window_main:onResize()
    if window_main.height < 400 and window_main.height > 0 then
        window_main.height = 400
        window_main.width = 300       
    end

    if window_main.width < 300 and window_main.width > 0 then
        window_main.width = 300
        window_main.height = 400
    end

    single:update()
    matrix:update()
end

single:apply()
matrix:apply()

ui.run(window_main):wait()