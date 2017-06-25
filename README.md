# lua-algorithms

This library was developed with the purpose of making general algorithms and data structures available in Java language also available in Lua.

The library covers commonly used data structures (ArrayList, Stack, Queue, Priority Queue, Balanced Search Tree, HashMap, Set, Tries) and algorithms (various sorting and search algorithms, shuffling, union find, etc)

# Install

```bash
luarocks install lualgorithms
```

# Usage

### Stack

```lua
local stack = require 'lualgorithms.data.stack'

local s = stack.create()
s:push(1)
s:push(2)
s:push(3)
print(s:size())
print(s:isEmpty())
print(s:pop())
for index,val in pairs(s:enumerate()) do
    print(index, val)
end
```

### List

The list behaves the same as the Java ArrayList API, and is zero-based indexing.

```lua
local list = require 'lualgorithms.data.list'

local s = list.create()
s:add(1) -- s becomes [1]
s:add(2) -- s becomes [1, 2]
s:add(3) -- s becomes [1, 2, 3]
s:set(2, 4) -- s becomes [1, 2, 4]

for index,val in pairs(s:enumerate()) do
    print(index, val)
end
for i = 0,s:size()-1 do
    print(s:get(i))
end
print(s:size())
print(s:isEmpty())
s:removeAt(0) -- s becomes [2, 4]
s:remove(2) -- s becomes [4]
s:removeAt(0) -- s is now empty
```

