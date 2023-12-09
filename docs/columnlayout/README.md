# columnlayout

Arranges child widgets into a single column.

![columnlayout](/docs/columnlayout/columnlayout.png)

**Note:**
The virtual layout has no physical boundaries.
All child widgets are placed without any wrapping.
The child width is limited if the width of the child widget is greater than the width of the layout.

## Constructor

Initializes a new column layout instance.

```Lua
ColumnLayout(parent, [direction], [gap], [positionx], [positiony], [width], [heigth])
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.
direction | number | Sets the direction in which all assigned child widgets will be arranged. The direction can be defined using the DIRECTION constant. The default direction is top.
gap | number | Sets the gap between the child widgets. The default value ist zero.
positionx | number | Sets horizontal position of the virtual layout. The default value ist zero.
positiony | number | Sets vertical position of the virtual layout. The default value ist zero.
width | number | Sets the width of the virtual layout. The default value is based on the width of the parent widget minus the horizontal position.
heigth | number | Sets the height of the virtual layout. The default value is based on the height of the parent widget minus the vertical position.

## Constant - DIRECTION

Field | Value | Description |
---|:---:|---
Top | 1 | Child widgets are arranged from top to bottom.
Bottom | 2 | Child widgets are arranged from bottom to top.

## Method - ADD

Adds a child widget.

```Lua
ColumnLayout:add(child, [alignment])
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

## Example - TOP

![columnlayouttop](/docs/columnlayout/columnlayouttop.png)

## Example - BOTTOM

![columnlayoutbottom](/docs/columnlayout/columnlayoutbottom.png)
