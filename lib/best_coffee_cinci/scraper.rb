class Scraper
  
  # def self.scrape_shops 
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
  #   shops = doc.css("")
  
  class NYT_Bestsellers::Bestsellers 
  
  attr_accessor :address, :phone, :url
  
  def self.all_shops
    self.scrape_shops
  end 
  
  def self.scrape_shops
    shops = []
    
    shops << self.scrape_address
    shops << self.scrape_phone
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-hardcover-fiction/_/N-1p3r"))
    
    address = self.new 
    shop_address = doc.css("div.product-shelf-title.pr-m").text.gsub(/\t/, "")
    
    address
  end 
  
  def self.scrape_phone
    doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-hardcover-fiction/_/N-1p3r"))
    
    phone = self.new 
    shop_phone = doc.css("div.product-shelf-title.pr-m").text.gsub(/\t/, "")
    
    phone
  end 
  
end