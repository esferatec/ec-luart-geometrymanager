local bl = require("ecluart.layouts.baselayout")
 
-- Places a single child widget at the given position.
-- Default resize is "none".
-- local formlayout = {}

-- Defines specific constants.
local RESIZE = { X = 1, Y = 2, Both = 3, None = 4 }

-- Defines the form layout object.
local FormLayout = Object(bl.BaseLayout())

-- Adds a child widget.
-- add(widget: object) -> none
function FormLayout:add(widget)
  if not bl.isvalidchild(widget) then return end

  local newWidget = {}
  newWidget.widget = widget
  newWidget.width = (self.width-((self.columns-1)*self.gap))/self.columns
  newWidget.height = (self.height-((self.rows-1)*self.gap))/self.rows
  newWidget.positionx = self.nextx
  newWidget.positiony = self.nexty
  newWidget.column = self.column
  newWidget.row = self.row

  self.nextx = self.nextx + newWidget.width + self.gap
  self.column = self.column + 1

  if self.nextx >= self.width then
    self.nextx = self.startx
    self.nexty = self.nexty + newWidget.height + self.gap
    self.column = 1
    self.row = self.row + 1
  end

  table.insert(self.children, newWidget)
end

-- Updates the child widget.
-- update() -> none
function FormLayout:update()
  if self.resize == RESIZE.None then
    return
  end

  local widthDifference, heightDifference = 0, 0

  -- overwrites default values if resize is "X" or "Both"
  if self.resize ~= RESIZE.Y then
    widthDifference = self.parent.width - self.parentwidth
  end

  -- overwrites default values if resize is "Y" or "Both"
  if self.resize ~= RESIZE.X then
    heightDifference = self.parent.height - self.parentheight
  end

  for _, child in pairs(self.children) do
    child.widget.width = child.width + (widthDifference / self.columns)
    child.widget.height = child.height + (heightDifference / self.rows)
    child.widget.x = child.positionx + ((widthDifference / self.columns) * (child.column - 1))
    child.widget.y = child.positiony + ((heightDifference / self.rows) * (child.row - 1))
  end
end

-- Creates the matrix layout constructor.
function FormLayout:constructor(parent, resize, gapx, gapy, positionx, positiony, width, height)
  assert(bl.isvalidparent(parent), bl.ERRORMESSAGE.notvalidparent)

  -- validates parameter values and sets default values
  if resize == nil then resize = RESIZE.None end
  if resize > 4 or resize < 1 then resize = RESIZE.None end

  self.parent = parent
  self.parentwidth = parent.width
  self.parentheight = parent.height
  self.children = {}
  self.columns = 2
  self.resize = resize
  self.gapx = gapx or 0
  self.gapy = gapy or 0
  self.width = width or self.parentwidth
  self.height = height or self.parentheight
  self.startx = positionx or 0
  self.starty = positiony or 0
  self.endx = self.startx + self.width
  self.endy = self.starty + self.height
  self.nextx = self.startx
  self.nexty = self.starty
  self.column = 1
  self.row = 1
end

return FormLayout
