class BestCoffeeCinci::Shop
  
  attr_accessor :name, :shop_nfo
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @shop_info = []
    save
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def get_info
    BestCoffeeCinci::Scraper.scrape_info if @shop_info.empty?
  end 
  
  def save
    @@all << self
  end
  
end 