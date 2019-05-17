require "byebug"

class Map
    def initialize
        @map = []        
    end

    def set(key, value)
        if !@map.empty? && idx = has_key?(@map, key)
            @map[idx] = Array.new([key,value])
        else
            @map << [key,value]
        end
    end
    
    def get(key)

    end
    
    def delete(key)

    end
    
    def show

    end

    def has_key?(to_check, key)
        to_check.each.with_index{|h, idx| return idx if h[0] == key } #return index of key/value pair if key exists, else return false
        return 
    end
    

end

test_map = Map.new
test_map.set(1,2)
p test_map
test_map.set(1,3)
p test_map
test_map.set(2,4)
p test_map