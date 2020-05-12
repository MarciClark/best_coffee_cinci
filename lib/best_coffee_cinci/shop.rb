class BestCoffeeCinci::Shop
  
  attr_accessor :name, :info
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @info = info
    save
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def get_info
    BestCoffeeCinci::Scraper.scrape_info if @info.empty?
  end 
  
  def save
    @@all << self
  end
  
end 