class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
 
    shops = doc.css("p.venueName")
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
    address = self.new 
    shop_address = doc.css("div.address").text.gsub(/\t/, "")
    
    address
  end 
  
end