local stack = require 'lualgorithms.data.stack'

describe('stack', function()

  describe('stack.LinkedListStack()', function()
    it('should push and pop items', function()
      local s = stack.LinkedListStack.create()
      s:push(1)
      s:push(2)
      s:push(3)
      for index,val in pairs(s:enumerate()) do
        print(index, val)
      end
      print(s:size())
      assert.equal(s:size(), 3)
      assert.equal(s:isEmpty(), false)
      assert.equal(s:pop(), 3)
      assert.equal(s:pop(), 2)
      assert.equal(s:pop(), 1)
      assert.equal(s:size(), 0)
      assert.equal(s:isEmpty(), true)
    end)
  end)

  describe('stack.ArrayStack()', function()
    it('should push and pop items', function()
      local s = stack.ArrayStack.create()
      s:push(1)
      s:push(2)
      s:push(3)
      for index,val in pairs(s:enumerate()) do
        print(index, val)
      end
      print(s:size())
      assert.equal(s:size(), 3)
      assert.equal(s:isEmpty(), false)
      assert.equal(s:pop(), 3)
      assert.equal(s:pop(), 2)
      assert.equal(s:pop(), 1)
      assert.equal(s:size(), 0)
      assert.equal(s:isEmpty(), true)
    end)
  end)

  describe('stack()', function()
    it('should push and pop items', function()
      local s = stack.create()
      s:push(1)
      s:push(2)
      s:push(3)
      for index,val in pairs(s:enumerate()) do
        print(index, val)
      end
      print(s:size())
      assert.equal(s:size(), 3)
      assert.equal(s:isEmpty(), false)
      assert.equal(s:pop(), 3)
      assert.equal(s:pop(), 2)
      assert.equal(s:pop(), 1)
      assert.equal(s:size(), 0)
      assert.equal(s:isEmpty(), true)
    end)
  end)

end)
