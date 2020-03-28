class Shop
  
  attr_accessor :name, :address
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @address = []
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def save
    @@all << self
  end
  
  def get_address 
    BestCoffeeCinci::Scraper_address(self) if @address.empty?
  end 
  
end 