# Example

```Lua
local ui = require("ui") -- Importing the ui module
local gm = require("ecluart.gm") -- Importing the ecluart.gm module

local window_main = ui.Window("Calculator", "dialog", 300, 380) -- Creating a window with the title "Calculator" and dimensions 300x380
window_main:status() -- Setting the window status

local single = gm.GeometryManager():SingleLayout(window_main, gm.RESIZE.X, 10, 10, 280, 50) -- Creating a single layout with the window_main as the parent, resizing in the X direction, and position (10, 10) with dimensions 280x50
local matrix = gm.GeometryManager():MatrixLayout(window_main, 4, 5, gm.RESIZE.Both, 0, 10, 70, 280, 280) -- Creating a matrix layout with the window_main as the parent, 4 rows and 5 columns, resizing in both directions, and position (0, 10) with dimensions 70x280

local entry_1 = ui.Entry(window_main, "0") -- Creating an entry widget with the window_main as the parent and initial text "0"
entry_1.textalign = "right" -- Setting the text alignment to right
entry_1.fontsize = 20 -- Setting the font size to 20
entry_1.fontstyle = {"bold"} -- Setting the font style to bold

single:add(entry_1) -- Adding the entry_1 widget to the single layout

local button_1 = ui.Button(window_main, "7") -- Creating a button widget with the window_main as the parent and label "7"
local button_2 = ui.Button(window_main, "8") -- Creating a button widget with the window_main as the parent and label "8"
local button_3 = ui.Button(window_main, "9") -- Creating a button widget with the window_main as the parent and label "9"
local button_4 = ui.Button(window_main, "/") -- Creating a button widget with the window_main as the parent and label "/"

local button_5 = ui.Button(window_main, "4") -- Creating a button widget with the window_main as the parent and label "4"
local button_6 = ui.Button(window_main, "5") -- Creating a button widget with the window_main as the parent and label "5"
local button_7 = ui.Button(window_main, "6") -- Creating a button widget with the window_main as the parent and label "6"
local button_8 = ui.Button(window_main, "X") -- Creating a button widget with the window_main as the parent and label "X"

local button_9 = ui.Button(window_main, "1") -- Creating a button widget with the window_main as the parent and label "1"
local button_10 = ui.Button(window_main, "2") -- Creating a button widget with the window_main as the parent and label "2"
local button_11 = ui.Button(window_main, "3") -- Creating a button widget with the window_main as the parent and label "3"
local button_12 = ui.Button(window_main, "-") -- Creating a button widget with the window_main as the parent and label "-"

local button_13 = ui.Button(window_main, "+/-") -- Creating a button widget with the window_main as the parent and label "+/-"
local button_14 = ui.Button(window_main, "0") -- Creating a button widget with the window_main as the parent and label "0"
local button_15 = ui.Button(window_main, ".") -- Creating a button widget with the window_main as the parent and label "."
local button_16 = ui.Button(window_main, "+") -- Creating a button widget with the window_main as the parent and label "+"

local label_17 = ui.Label(window_main, " ") -- Creating a label widget with the window_main as the parent and empty text
local label_18 = ui.Label(window_main, " ") -- Creating a label widget with the window_main as the parent and empty text
local label_19 = ui.Label(window_main, " ") -- Creating a label widget with the window_main as the parent and empty text
local button_20 = ui.Button(window_main, "=") -- Creating a button widget with the window_main as the parent and label "="

matrix:add(button_1) -- Adding button_1 to the matrix layout
matrix:add(button_2) -- Adding button_2 to the matrix layout
matrix:add(button_3) -- Adding button_3 to the matrix layout
matrix:add(button_4) -- Adding button_4 to the matrix layout
matrix:add(button_5) -- Adding button_5 to the matrix layout
matrix:add(button_6) -- Adding button_6 to the matrix layout
matrix:add(button_7) -- Adding button_7 to the matrix layout
matrix:add(button_8) -- Adding button_8 to the matrix layout
matrix:add(button_9) -- Adding button_9 to the matrix layout
matrix:add(button_10) -- Adding button_10 to the matrix layout
matrix:add(button_11) -- Adding button_11 to the matrix layout
matrix:add(button_12) -- Adding button_12 to the matrix layout
matrix:add(button_13) -- Adding button_13 to the matrix layout
matrix:add(button_14) -- Adding button_14 to the matrix layout
matrix:add(button_15) -- Adding button_15 to the matrix layout
matrix:add(button_16) -- Adding button_16 to the matrix layout
matrix:add(label_17) -- Adding label_17 to the matrix layout
matrix:add(label_18) -- Adding label_18 to the matrix layout
matrix:add(label_19) -- Adding label_19 to the matrix layout
matrix:add(button_20) -- Adding button_20 to the matrix layout

function window_main:onResize()
    if window_main.height < 400 and window_main.height > 0 then -- Checking if the window height is less than 400 and greater than 0
        window_main.height = 400 -- Setting the window height to 400
        window_main.width = 300 -- Setting the window width to 300
    end

    if window_main.width < 300 and window_main.width > 0 then -- Checking if the window width is less than 300 and greater than 0
        window_main.width = 300 -- Setting the window width to 300
        window_main.height = 400 -- Setting the window height to 400
    end

    single:update() -- Updating the single layout
    matrix:update() -- Updating the matrix layout
end

single:apply() -- Applying the changes made to the single layout
matrix:apply() -- Applying the changes made to the matrix layout
ui.run(window_main):wait() -- Running the window_main and waiting for user interaction
```
