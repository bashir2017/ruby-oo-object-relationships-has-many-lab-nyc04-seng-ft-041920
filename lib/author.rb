class Author 

    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def posts
        Post.all 
    end 

    def add_post(post)        
        post.author = self  #connects author to post 
    end 

    def add_post_by_title(title)
        new_post = Post.new(title)
        add_post(new_post)
    end 

    def self.post_count 
        temp_instance = Author.new('temp')       #Again, is this a logical way of accessing the Post.all (through #posts)
        temp_instance.posts.count
    end 
end 