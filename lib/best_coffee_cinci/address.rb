class Address
  
  attr_accessor :name, :shops
  
  @@all = []
   
  def initialize(name)
    @name = name
    @shops = []
    save
  end 
  
  def self.all 
  end 
  
  def address
    Scraper.scrape_addresses(self) if @shops.empty?
  end
  
  def save
    @all << self 
  end 
end 