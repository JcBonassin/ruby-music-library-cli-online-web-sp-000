class Song
  attr_accessor :name

  @@all = []

  def self.all #Class reader
      @@all
    end

  def initialize
    @name = name
    @@all << []
  end

    def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = new(name)
    song.save
    song
  end

  def self.find_by_name(name)
    all.detect{ |s| s.name == name }
  end



end
