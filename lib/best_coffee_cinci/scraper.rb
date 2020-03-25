class Scraper
  
  def self.scrape_shops 
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
    shops = doc.css("")
  
  
  
end