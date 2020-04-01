class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  
  # def self.all_shops
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
 
  #   shops = doc.css("p.venueName")
  # end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
  #   address = self.new 
  #   shop_address = doc.css("div.address").text.gsub(/\t/, "")
    
  #   address
  # end 
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
 
    shop = doc.css("h2.text-align:center").first
    href = student_card.css("a").first["href"]
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
    
    address = self.new 
    shop_address = doc.css("br").text.gsub(/\t/, "")
    
    address
  end 
  
end