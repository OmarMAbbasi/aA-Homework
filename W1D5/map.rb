require "byebug"

class Map
    def initialize
        @map = []        
    end

    def set(key, value)
        debugger
        if has_key?(@map, key) && !@map.empty?
            puts  "hi"
        end
        @map << [key,value]
        
    end
    
    def get(key)

    end
    
    def delete(key)

    end
    
    def show

    end

    def has_key?(to_check, key)
        #debugger
        to_check.each{|h| return true if h[0] == key }
        false
    end
    

end

test_map = Map.new
test_map.set(1,2)
test_map.set(1,2)