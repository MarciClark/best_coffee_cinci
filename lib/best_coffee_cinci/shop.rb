class BestCoffeeCinci::Shop
  
  attr_accessor :name, :addresses
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @addresses = []
    save
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def get_addresses 
    BestCoffeeCinci::Scraper.scrape_addresses(self) if @addresses.empty?
  end 
  
  def save
    @@all << self
  end
  
end 