class Song
  attr_accessor :name

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

  def self.count
    @@all.size
  end

  def save
    @@all << self
  end

  def find_by_name(name)
      self.all.detect{|s| s.name == name}
    end

end
