class Shop
  
  attr_accessor :name, :shops
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @shops = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
    @@all << self
  end
  
end 