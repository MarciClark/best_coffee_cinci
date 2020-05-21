class BestCoffeeCinci::Shop
  
  attr_accessor :name, :description, :hours, :address, :link
  
  @@all = []
  
  def initialize(name, link)
    @name = name 
    @link = link
    @@all << self
  end 
  
  def self.all 
    BestCoffeeCinci::Scraper.scrape_shops if @@all.empty?
    @@all 
  end 
  
  def get_info
    BestCoffeeCinci::Scraper.scrape_info if @info.empty?
  end 
end 