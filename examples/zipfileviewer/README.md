# Example

```Lua
local ui = require("ui")
local gm = require("ecluart.gm")

local window_main = ui.Window("Zip File Viewer", "dialog", 400, 300)

--#region main layout
local layout_main = gm.GeometryManager():SingleLayout(window_main, gm.RESIZE.Both, 10, 10, 200, 240)

local list_files = ui.List(window_main, {}, 0, 0, 200, 240)
list_files.style = "icons"
layout_main:add(list_files)

layout_main:apply()
--endregion main layout

--#region right layout
local layout_right = gm.GeometryManager():RightLayout(window_main, gm.DIRECTION.Top, 8, { 10, 10, 10, 50 }, 170)
local caption_filename = ui.Label(window_main, "file name:")
layout_right:add(caption_filename)
local label_filename = ui.Label(window_main, "", 0, 0, layout_right.width, 17)
layout_right:add(label_filename)

local caption_filepath = ui.Label(window_main, "file path:")
layout_right:add(caption_filepath)
local label_filepath = ui.Label(window_main, "", 0, 0, layout_right.width, 17)
layout_right:add(label_filepath)

local caption_archivecount = ui.Label(window_main, "number of entries:")
layout_right:add(caption_archivecount)
local label_archivecount = ui.Label(window_main, "", 0, 0, layout_right.width, 17)
label_archivecount.textalign = "center"
layout_right:add(label_archivecount)

local caption_archivesize = ui.Label(window_main, "size in bytes:")
layout_right:add(caption_archivesize)
local label_archivesize = ui.Label(window_main, "", 0, 0, layout_right.width, 17)
label_archivesize.textalign = "right"
layout_right:add(label_archivesize)

layout_right:apply()
--#endregion right layout

--#region bottom layout
local layout_bottom = gm.GeometryManager():BottomLayout(window_main, gm.DIRECTION.Right, 10, { 10, 190, 10, 10 }, 30)

local button_reset = ui.Button(window_main, "Reset", nil, nil, 80, nil)
layout_bottom:add(button_reset, gm.ALIGNMENT.Center)

local button_open = ui.Button(window_main, "Open", nil, nil, 80, nil)
layout_bottom:add(button_open, gm.ALIGNMENT.Center)

layout_bottom:apply()
--#endregion bottom layout

function button_reset:onClick()
    -- resets the main window
    layout_main:reset()
end

function window_main:onResize()
    -- controls the minimum height
    if window_main.height < 300 and window_main.height > 0 then
        window_main.height = 300
    end

    -- controls the minimum width
    if window_main.width < 400 and window_main.width > 0 then
        window_main.width = 400
    end

    -- updates alle child widgest of each layout manager
    layout_main:update()
    layout_bottom:update()
    layout_right:update()
end

window_main:show()

repeat
    ui.update()
until window_main.visible == false
```
