# rowlayout

Arranges child widgets into a single row.

![rowlayout](/docs/rowlayout/rowlayout.png)

**Note:**
The virtual layout has no physical boundaries.
All child widgets are placed without any wrapping.
The child height is limited if the height of the child widget is greater than the height of the layout.

## Constructor

Initializes a new ow layout instance.

```Lua
RowLayout(parent, [direction], [gap], [positionx], [positiony], [width], [heigth])
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.
direction | number | Sets the direction in which all assigned child widgets will be arranged. The direction can be defined using the DIRECTION constant. The default direction is left.
gap | number | Sets the gap between the child widgets. The default value ist zero.
positionx | number | Sets horizontal position of the virtual layout. The default value ist zero.
positiony | number | Sets vertical position of the virtual layout. The default value ist zero.
width | number | Sets the width of the virtual layout. The default value is based on the width of the parent widget minus the horizontal position.
height | number | 	Sets the height of the virtual layout. The default value is based on the height of the parent widget minus the vertical position.

## Constant - DIRECTION

Field | Value | Description |
---|:---:|---
Left | 1 | Child widgets are arranged from left to right.
Right | 2 | Child widgets are arranged from right to left.

## Method - ADD

Adds a child widget.

```Lua
ColumnLayout:add(child, [alignment])
```

Parameter | Type | Description
---|---|---
child | widget | Sets the child widget.
alignment | number | Sets the vertical alignment of the child widget when it is placed within the layout. The alignment can be defined using the ALIGNMENT constant. The default alignment ist top.

## Constant - ALIGNMENT

Field | Value | Description |
---|:---:|---
Top | 1 | Child widget ist placed on the top.
Bottom | 2 | Child widget is placed on the bottom.
Center | 3 | Child widget is placed in the center.

## Method - APPLY

Positions all child widgets.

```Lua
ColumnLayout:apply()
```

**Note:**
This function must be called after all child widgets have been added and before the parent widget is displayed.

## Method - HIDE

Hides all child widgets.

```Lua
ColumnLayout:hide()
```

## Method - SHOW

Shows all child widgets.

```Lua
ColumnLayout:show()
```

## Example - LEFT

![rowlayoutleft](/docs/rowlayout/rowlayoutleft.png)

## Example - RIGHT

![rowlayoutright](/docs/rowlayout/rowlayoutright.png)
