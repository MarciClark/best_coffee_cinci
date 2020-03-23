class Shop_address
  
  attr_accessor :name, :shops
  
  @@all = []
   
  def initialize(name)
    @name = name
    @shops = []
    save
  end 
  
  def self.all 
  end 
  
  def shop_address
    Scraper.scrape_address(self) if @shops.empty?
  end
  
end 