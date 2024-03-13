# bottomlayout

Arranges child widgets into a single row on the bottom border.

![bottomlayout](/docs/bottomlayout/bottomlayout.png)

**Note:**
The virtual layout has no physical boundaries.
All child widgets are placed without any wrapping.
The child height is limited if the height of the child widget is greater than the height of the layout.

## Constructor

Initializes a new bottom layout instance.

```Lua
BottomLayout(parent, [direction], [gap], [margin], [height])
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.
direction | number | Sets the direction in which all assigned child widgets will be arranged. The direction can be defined using the DIRECTION constant. The default direction is left.
gap | number | Sets the gap between the child widgets. The default value ist zero.
margin | table | Sets the margin of the virtual layout to the parent widget. The margin is specified as a table: {left, right, top, bottom}. The default value ist zero.
height | number | Sets the height of the virtual layout. The default value is based on the height of the parent widget minus the top and bottom margins.

## Constant - DIRECTION

Field | Value | Description |
---|:---:|---
Left | 1 | Child widgets are arranged from left to right.
Right | 2 | Child widgets are arranged from right to left.

## Method - ADD

Adds a child widget.

```Lua
BottomLayout:add(child, [alignment])
```

Parameter | Type | Description
---|---|---
child | widget | Sets the child widget.
alignment | number | Sets the vertical alignment of the child widget when it is placed within the layout. The alignment can be defined using the ALIGNMENT constant. The default alignment ist bottom.

## Constant - ALIGNMENT

Field | Value | Description |
---|:---:|---
Top | 1 | Child widget ist placed on the top.
Bottom | 2 | Child widget is placed on the bottom.
Center | 3 | Child widget is placed in the center.

## Method - APPLY

Positions all child widgets.

```Lua
BottomLayout:apply()
```

**Note:**
This function must be called after all child widgets have been added and before the parent widget is displayed.

## Method - HIDE

Hides all child widgets.

```Lua
BottomLayout:hide()
```

## Method - SHOW

Shows all child widgets.

```Lua
BottomLayout:show()
```

## Example - LEFT

![bottomlayoutleft](/docs/bottomlayout/bottomlayoutleft.png)

## Example - RIGHT

![bottomlayoutright](/docs/bottomlayout/bottomlayoutright.png)
