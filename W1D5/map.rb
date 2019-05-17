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
        idx = has_key?(@map, key)
        if !idx
            idx
        else
            @map[idx][1]
        end
    end
    
    def delete(key)
        idx = has_key?(@map, key)
        if !idx
            return false
        else
            #debugger
            @map[idx] = nil
            @map.compact!
        end
    end

    def show
        @map
    end

    def has_key?(to_check, key)
        to_check.each.with_index{|h, idx| return idx if h[0] == key } #return index of key/value pair if key exists, else return false
         false
    end

end

test_map = Map.new
p "add new key/value pair: #{test_map.set(1,2)}"
p "update value: #{test_map.set(1,3)}"
p "add second value: #{test_map.set(2,4)}"
p "return false if key doesn't exist: #{test_map.get(3)}"
p "return value if key exists: #{test_map.get(2)}"
puts "return false if key doesn't exist: #{test_map.delete(5)}"
puts "delete value if key exists: #{test_map.delete(2)}"
test_map.set(4,2)
test_map.set(3,3)
test_map.set(2,4)
puts "Fill Hash and Display All Key/Value pairs #{test_map.show}"
