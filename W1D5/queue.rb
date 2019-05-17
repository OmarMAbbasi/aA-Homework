class Queue
    def initialize
        @queue = []        
    end

    def enqueue(el)
        queue += [el]    
    end
    
    def dequeue
        queue.delete_at(0)    
    end
    
    def peek
        return queue[0]
    end
end


  test_queue = Queue.new
  puts "Push 1: #{test_queue.enqueue(1)}"
  puts "Pop: #{test_queue.dequeue}"
  puts "Push 1: #{test_queue.enqueue(1)}"
  puts "Push 2: #{test_queue.enqueue(2)}"
  puts "Push 3: #{test_queue.enqueue(3)}"
  puts "Peek: #{test_queue.peek}"
  puts "Pop: #{test_queue.dequeue}"
  puts "Peek: #{test_queue.peek}"