class Artist 

    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def songs 
        Song.all 
    end 

    def add_song(song)
        song.artist = self
    end 

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)  #associates the song and artist 
    end 

    def self.song_count 
        temp_artist_instance = Artist.new("temp")  #Is this the proper way of accessing the "songs" method 
        temp_artist_instance.songs.size 
    end 
end 