class Post 

    attr_accessor :title, :author 

    @@all = []

    def initialize(title)      #Wouldn't be cleaner to initialize with title as well as author instance     
        @title = title         #and move that logic away from the author class? 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

   def author_name 
        @author ? @author.name : nil 
   end 

end 