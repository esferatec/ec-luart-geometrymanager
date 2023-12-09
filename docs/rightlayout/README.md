# rightlayout

Arranges child widgets into a single column on the right border.

![rightlayout](/docs/rightlayout/rightlayout.png)

**Note:**
The virtual layout has no physical boundaries.
All child widgets are placed without any wrapping.
The child width is limited if the width of the child widget is greater than the width of the layout.

## Constructor

Initializes a new left layout instance.

```Lua
RightLayout(parent, [direction], [gap], [margin], [width])
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.
direction | number | Sets the direction in which all assigned child widgets will be arranged. The direction can be defined using the DIRECTION constant. The default direction is top.
gap | number | Sets the gap between the child widgets. The default value ist zero.
margin | table | Sets the margin of the virtual layout to the parent widget. The margin is specified as a table: {left, right, top, bottom}. The default value ist zero.
width | number | Sets the width of the virtual layout. The default value is based on the width of the parent widget minus the left and right margins.

## Constant - DIRECTION

Field | Value | Description |
---|:---:|---
Top | 1 | Child widgets are arranged from top to bottom.
Bottom | 2 | Child widgets are arranged from bottom to top.

## Method - ADD

Adds a child widget.

```Lua
RightLayout:add(child, [alignment])
```

Parameter | Type | Description
---|---|---
child | widget | Sets the child widget.
alignment | number | Sets the vertical alignment of the child widget when it is placed within the layout. The alignment can be defined using the ALIGNMENT constant. The default alignment ist left.

## Constant - ALIGNMENT

Field | Value | Description |
---|:---:|---
Left | 1 | Child widget ist placed on the left.
Right | 2 | Child widget is placed on the right.
Center | 3 | Child widget is placed in the center.

## Method - APPLY

Positions all child widgets.

```Lua
RightLayout:apply()
```

**Note:**
This function must be called after all child widgets have been added and before the parent widget is displayed.

## Method - HIDE

Hides all child widgets.

```Lua
RightLayout:hide()
```

## Method - SHOW

Shows all child widgets.

```Lua
RightLayout:show()
```

## Example - TOP

![RightLayouttop](/docs/rightlayout/rightlayouttop.png)

## Example - BOTTOM

![RightLayoutbottom](/docs/rightlayout/rightlayoutbottom.png)
