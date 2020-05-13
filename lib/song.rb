class Song 

    @@all = []
    attr_accessor :name
    attr_reader :artist
    
    def initialize(name)
        @name = name 
        new 
    end 

    def new
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def artist=(person)
        @artist = person           #doesn't work with self.artist = person 
    end 

    def artist_name
        @artist ? @artist.name : nil 
    end 

end 