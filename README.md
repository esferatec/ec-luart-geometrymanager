# ec-luart-geometrymanager

The project is a geometry management module written in Lua and LauRT. It defines a GeometryManager object that provides methods to initialize different layout instances for LuaRT desktop applications.

![Screenshot of the Zip File Viewer](/readme.png)

**Please note:**
These virtual layouts are not physical widgets. They do not take up any space on the parent widget. Basically, they help to place other widgets (buttons, labels, etc.) and rearrange them when the parent widget is resized.

[![Lua 5.4.6](https://badgen.net/badge/Lua/5.4.6/yellow)](https://github.com/lua/lua)
[![LuaRT 1.6.0](https://badgen.net/badge/LuaRT/1.6.0/blue)](https://github.com/samyeyo/LuaRT)
[![LuaCheck 1.1.1](https://badgen.net/badge/LuaCheck/1.1.1/green)](https://github.com/lunarmodules/luacheck)

## Features

The project provides a modular and flexible way to manage layouts in desktop applications. Each virtual layout controls the rendering of its child widgets - their size, dimensions, position or arrangement.

The project provides the following virtual layouts:

| Name | Description | Module |
| --- | --- | --- |
| AbsoluteLayout | Places child widgets at the given absolute position. | absolutelayout.lua
| BottomLayout | Arranges child widgets into a single row on the bottom border. | bottomlayout.lua
| ColumnLayout | Arranges child widgets into a single column. | columnlayout.lua
| LeftLayout | Arranges child widgets into a single column on the left border. | leftlayout.lua
| MatrixLayout | Arranges child widgets into a given matix. | matrixlayout.lua
| PackLayout | Arranges child widgets into a single resizeable column. | packlayout.lua
| RelativeLayout | Places child widgets at the given relative position. | relativelayout.lua
| RightLayout | Arranges child widgets into a single column on the right border. | rightlayout.lua
| RowLayout | Arranges child widgets into a single row. | rowlayout.lua
| SingelLayout | Places a single child widget at the given position. | singelayout.lua
| TopLayout | Arranges child widgets into a single row on the top border. | toplayout.lua

More detailed descriptions and examples for each of these layouts can be found in the "docs" folder.

## Installation

1. Create a folder called "ecluart" in your application.
2. Copy the "gm.lua" file into this folder.
3. In the same folder, copy the folder "layouts".

```text
[application]
|
|----ecluart
|   |
|   |----gm.lua
|   |----layouts
|        |----singlelayout.lua
|        |----...
|
|----app.wlua
```

## Usage

A geometry manager (gm) can be loaded using the function *require()*:

```lua
local gm = require("eclua.gm") 
```

## License

Copyright (c) 2023 by esferatec.
It is open source, released under the MIT License.
See full copyright notice in the LICENSE.md file.
