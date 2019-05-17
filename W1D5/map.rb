class Map
    def initialize
        @map = []        
    end

    def set(key, value)
        
    end
    
    def get(key)

    end
    
    def delete(key)

    end
    
    def show

    end

    def has_key?(key)
        @map.each{|hash| true if hash[0] == key }
    end
    

end