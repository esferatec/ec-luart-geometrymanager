# singlelayout

Places a single child widget at the given position.

![singlelayout](/docs/singlelayout/singlelayout.png)

**Note:**
The virtual layout has no physical boundaries.
The child widget takes the position and dimensions of the virtual layout.

## Constructor

Initializes a new single layout instance.

```Lua
SingleLayout(parent, [resize], [positionx], [positiony], [width], [height])
```

Parameter | Type | Description
---|---|---
parent| widget | Sets the parent widget.
resize | number | Sets the direction in which the child widgets will be stretched. The direction can be defined using the RESIZE constant. The default direction is both.
positionx | number | Sets horizontal position of the virtual layout. The default value ist zero.
positiony | number | Sets vertical position of the virtual layout. The default value ist zero.
width | number | Sets the width of the virtual layout. The default value is the width of the parent widget.
height | number | Sets the height of the virtual layout. The default value is the height of the parent widget.

## Constant - RESIZE

Field | Value | Description |
---|:---:|---
X | 1 | Child widget stretches to layout width.
Y | 2 | Child widget stretches to layout height.
Both | 3 | Child widget stretches to layout width and height.

## Method - ADD

Adds a child widget.

```Lua
SingleLayout:add(child)
```

 Parameter | Type | Description
---|---|---
child | widget | Sets the child widget.

## Method - APPLY

Positions all child widgets.

```Lua
SingleLayout:apply()
```

**Note:**
This function must be called after the child widget has been added and before the parent widget is displayed.

## Method - HIDE

Hides all child widgets.

```Lua
SingleLayout:hide()
```

## Method - SHOW

Shows all child widgets.

```Lua
SingleLayout:show()
```

## Example - BUTTON

![singlelayoutbuttton](/docs/singlelayout/singlelayoutbutton.png)
