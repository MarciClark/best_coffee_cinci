# require 'pry'

# class BestCoffeeCinci::Location
  
#   attr_accessor :name, :shops
  
#   @@all = []
   
#   def initialize(name)
#     @name = name
#     @shops = []
#     save
#   end 
  
#   def self.all 
#     BestCoffeeCinci::Scraper.scrape_locations(self) if @@all.empty?
#       @@all
#   end 
  
#   def save
#     @all << self 
#   end 
# end 