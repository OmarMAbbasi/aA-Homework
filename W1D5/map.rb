require "byebug"

class Map
    def initialize
        @map = []        
    end

    def set(key, value)
        if has_key?(key)
            puts  "hi"
        end
        puts "yo"
        
    end
    
    def get(key)

    end
    
    def delete(key)

    end
    
    def show

    end

    def has_key?(key)
        debugger
        @map.each{|hash| true if hash[0] == key }
        false
    end
    

end

test_map = Map.new
test_map.set(1,2)