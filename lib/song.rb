class Song
    @@count = 0
    @@artists =[]
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        #@@artists.uniq!
        @@genres << genre
        #@@genres.uniq!
        @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
        @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    end
    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.genre_count
        @@genre_count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artist_count
        @@artist_count
    end
end

jz = Song.new("99 Problems", "Jay-Z", "rap")
bey = Song.new("Countdown", "Beyonce", "RB")
gg = Song.new("Bad Romance", "Lady Gaga", "Pop")
db = Song.new("Life on Mars", "David Bowie", "Pop")
db2 = Song.new("Space Odditty", "David Bowie", "Pop")

puts Song.artist_count
