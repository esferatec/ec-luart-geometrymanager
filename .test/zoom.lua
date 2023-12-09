-- Updates all child widgets.
-- update(reposition?: boolean, resize?: boolean) -> none
function BaseLayout:zoom(reposition, resize)
    -- parameter type validation
    if type(reposition) ~= "boolean" or type(resize) ~= "boolean" then
      return
    end
  
    -- rw = ratio width; rh = ratio height
    local rw = self.parent.width / self.parentwidth
    local rh = self.parent.height / self.parentheight
  
    -- c = child
    for _, c in pairs(self.children) do
      c.widget.x = c.positionx * (reposition and rw or 1)
      c.widget.y = c.positiony * (reposition and rh or 1)
      c.widget.width = c.width * (resize and rw or 1)
      c.widget.height = c.height * (resize and rh or 1)
    end
  end