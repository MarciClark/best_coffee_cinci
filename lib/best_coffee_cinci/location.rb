# class Location
  
#   attr_accessor :name, :shops
  
#   @@all = []
   
#   def initialize(name)
#     @name = name
#     @shops = []
#     save
#   end 
  
#   def self.all 
#   end 
  
#   def location
#     Scraper.locations(self) if @shops.empty?
#   end
  
#   def save
#     @all << self 
#   end 
# end 