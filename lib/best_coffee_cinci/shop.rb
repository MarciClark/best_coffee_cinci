class BestCoffeeCinci::Shop
  
  attr_accessor :name, :location
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @location = []
    save
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def get_locations 
    BestCoffeeCinci::Scraper.scrape_locations(self) if @locations.empty?
  end 
  
  def save
    @@all << self
  end
  
end 