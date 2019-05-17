  class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack += [el]
    end

    def pop
      @stack.delete_at(-1)
    end

    def peek
      @stack[-1]
    end
  end

  test_stack = Stack.new
  puts "Push 1: #{test_stack.push(1)}"
  puts "Pop: #{test_stack.pop}"
  puts "Push 1: #{test_stack.push(1)}"
  puts "Push 2: #{test_stack.push(2)}"
  puts "Push 3: #{test_stack.push(3)}"
  puts "Peek: #{test_stack.peek}"
  puts "Pop: #{test_stack.pop}"
  puts "Peek: #{test_stack.peek}"