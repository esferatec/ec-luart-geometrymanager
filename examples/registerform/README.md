# Example

```Lua
local ui = require("ui") -- Import the ui module
local gm = require("ecluart.gm") -- Import the ecluart.gm module

local winMain = ui.Window("RegistrationForm", "dialog", 350, 300) -- Create a new window with the title "RegistrationForm" and dimensions 350x300
winMain:status() -- Set the window to display a status bar

local pacLabels = gm.GeometryManager():PackLayout(winMain, false, 10, 25, 80, 200) -- Create a new pack layout for labels with padding and spacing

local lblName = ui.Label(winMain, "Name:") -- Create a label with the text "Name:"
local lblPassword = ui.Label(winMain, "Password:") -- Create a label with the text "Password:"
local lblAge = ui.Label(winMain, "Age:") -- Create a label with the text "Age:"
local lblEmail = ui.Label(winMain, "Email:") -- Create a label with the text "Email:"
local lblCountry = ui.Label(winMain, "Country:") -- Create a label with the text "Country:"

pacLabels:add(lblName, 27) -- Add the label "lblName" to the pack layout with a weight of 27
pacLabels:add(lblPassword, 27) -- Add the label "lblPassword" to the pack layout with a weight of 27
pacLabels:add(lblAge, 27) -- Add the label "lblAge" to the pack layout with a weight of 27
pacLabels:add(lblEmail, 29) -- Add the label "lblEmail" to the pack layout with a weight of 29
pacLabels:add(lblCountry) -- Add the label "lblCountry" to the pack layout

local pacEntrys = gm.GeometryManager():PackLayout(winMain, true, 100, 20, 200, 200) -- Create a new pack layout for entry fields with padding and spacing

local etyName = ui.Entry(winMain, "", nil, nil, 10) -- Create an entry field for the name with a maximum length of 10 characters
local etyPassword = ui.Entry(winMain, "", nil, nil, 120) -- Create an entry field for the password with a maximum length of 120 characters
local etyAge = ui.Entry(winMain, "", nil, nil, 40) -- Create an entry field for the age with a maximum length of 40 characters
local etyEmail = ui.Entry(winMain, "", nil, nil, 150) -- Create an entry field for the email with a maximum length of 150 characters
local cbbCountry = ui.Combobox(winMain, { "Item 1", "Item 2", "Item 3" }, nil, nil, 80) -- Create a combobox with the options "Item 1", "Item 2", and "Item 3"

pacEntrys:add(etyName, 20, gm.ALIGNMENT.Stretch) -- Add the entry field "etyName" to the pack layout with a weight of 20 and stretch it to fill the available space
pacEntrys:add(etyPassword, 20) -- Add the entry field "etyPassword" to the pack layout with a weight of 20
pacEntrys:add(etyAge, 20) -- Add the entry field "etyAge" to the pack layout with a weight of 20
pacEntrys:add(etyEmail, 20, gm.ALIGNMENT.Right) -- Add the entry field "etyEmail" to the pack layout with a weight of 20 and align it to the right
pacEntrys:add(cbbCountry, 20) -- Add the combobox "cbbCountry" to the pack layout with a weight of 20

local relButtons = gm.GeometryManager():RelativeLayout(winMain) -- Create a new relative layout for buttons

local btnApply = ui.Button(winMain, "    OK    ") -- Create a button with the label "OK"

relButtons:add(btnApply, 0.5, 0.85, gm.ANCHOR.Center) -- Add the button "btnApply" to the relative layout with a horizontal position of 0.5 (centered) and a vertical position of 0.85 (near the bottom)

function btnApply:onClick() -- Define a function to be called when the button "btnApply" is clicked
  ui.info(cbbCountry.height) -- Print the height of the combobox "cbbCountry" to the console
end

function winMain:onResize() -- Define a function to be called when the window "winMain" is resized
  pacLabels:update() -- Update the pack layout for labels
  pacEntrys:update() -- Update the pack layout for entry fields
  relButtons:update() -- Update the relative layout for buttons
end

pacLabels:apply() -- Apply the pack layout for labels
pacEntrys:apply() -- Apply the pack layout for entry fields
relButtons:apply() -- Apply the relative layout for buttons

ui.run(winMain):wait() -- Run the UI and wait for the window "winMain" to close
```
