class Song
    attr_accessor :name, :artist, :genre
        
    @@count = 0 # the number of songs in the collection
    @@genres = [] # genres array
    @@artists = [] # artists array

    def initialize(name, artist, genre)
        @name = name # name of the song
        @artist = artist #
        @genre = genre # genre of the song
        @@count += 1 # increments @@count by 1 every time a song is created.
        @@genres << genre # adds genre to @@genres array evey time a song is created.
        @@artists << artist # adds artist to @@artists array evey time a song is created.
    end

    def self.count # returns the number of songs created
        @@count
    end

    def self.genres # returns an array of all of the genres of existing songs without duplicates!
        @@genres.uniq!
    end

    def self.artists # returns an array of all of the artists of existing songs without duplicates!
        @@artists.uniq!
    end

    def self.genre_count #  add the genre of the song being created to the @@genres array.
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre] 
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1 
          end
        end
        genre_count 
    end

    def self.artist_count # add artists to the @@artists array. All artists should be added to the array.
        artist_count = {} 
        @@artists.each do |artist| 
          if artist_count[artist] 
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1 
          end
        end
        artist_count 
    end

end