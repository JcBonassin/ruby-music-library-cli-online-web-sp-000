class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << []
  end

  def self.all #Class reader
      @@all
    end

    def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    all.detect{ |s| s.name == name }
  end


end
