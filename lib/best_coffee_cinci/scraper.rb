class BestCoffeeCinci::Scraper
# class Scraper
  
  # def self.scrape_shops 
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
  #   shops = doc.css("")
  
  # attr_accessor :address, :phone, :url
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
 
    shops = doc.css("p.venueName")
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
    address = self.new 
    shop_address = doc.css("").text.gsub(/\t/, "")
    
    address
  end 
  
  # def self.scrape_phone
  #   doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-hardcover-fiction/_/N-1p3r"))
    
  #   phone = self.new 
  #   shop_phone = doc.css("div.product-shelf-title.pr-m").text.gsub(/\t/, "")
    
  #   phone
  end 
  
end