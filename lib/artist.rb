class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all #Class reader
      @@all
    end

  def initialize
    save
  end

    def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end


end
