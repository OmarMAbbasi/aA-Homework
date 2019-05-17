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