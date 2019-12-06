class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = self.new
    #@@all << song
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
   # @@all << song
    song.save
    song
  end
  
  def self.create_by_name(name)
    song = self.new_by_name(name)
  end
  
  def self.find_by_name(name)
    self.class.all.find name
    
  end
  
  

end
