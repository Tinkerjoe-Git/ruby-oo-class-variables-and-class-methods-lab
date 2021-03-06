class Song
    @@count=0
    @@artists=[]
    @@genres=[]
    attr_reader :name, :artist, :genre
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@artists << artist
        @@genres << genre
        @@count+=1
    end

    def self.count
        @@count 
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count={}
        @@genres.each do |g|
            if genre_count[g]
                genre_count[g]=genre_count[g]+=1
            else
                genre_count[g]=1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count={}
        @@artists.each do |g|
            if artist_count[g]
                artist_count[g]=artist_count[g]+=1
            else
                artist_count[g]=1
            end
        end
        artist_count
    end

    
end





