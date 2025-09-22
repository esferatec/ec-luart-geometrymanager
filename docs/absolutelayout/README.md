# absolutelayout

Places a child widget at the given absolute position.

**Note:**
The virtual layout has no physical boundaries.
The child widget takes the position and dimensions of the virtual layout.

## Constructor

Initializes a new absolute layout instance.

```Lua
AbsoluteLayout(parent)
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.

## Method - ADD

Adds a child widget.

```Lua
AbsoluteLayout:add(child, [postionx], [positiony])
```

 Parameter | Type | Description
---|---|---
child | widget | Sets the child widget.
positionx | number | Sets the child horizontal position. If no value is specified, the default position of the child is used.
positiony | number | Sets the child vertical position. If no value is specified, the default position of the child is used.

## Method - APPLY

Positions all child widgets.

```Lua
AbsoluteLayout:apply()
```

**Note:**
This function must be called after the child widget has been added and before the parent widget is displayed.

## Method - HIDE

Hides all child widgets.

```Lua
AbsoluteLayout:hide()
```

## Method - SHOW

Shows all child widgets.

```Lua
AbsoluteLayout:show()
```

## Example - SHOW

![absolutelayoutshow](/docs/absolutelayout/absolutelayoutshow.png)

## Example - HIDE

![absolutelayouthide](/docs/absolutelayout/absolutelayouthide.png)
