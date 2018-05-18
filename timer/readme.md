# Love2D - Timer.lua
This library allows do invoke functions in an intervaled time.

## Usage
Use "**require**" to assign timers in referenced variables.

## Functions
| Functions | Parameters                         
|----------------|-----------------
|:SetInterval|Set time of function invoke.          
|:GetInterval|Get time of function invoke.          
|:AddFunction|Add a new function to stack of functions to invoke.
|:update|Timer updating, need write in love.update().