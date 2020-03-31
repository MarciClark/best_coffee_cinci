class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
 
    shops = doc.css("h2.a href")
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
    
    address = self.new 
    shop_address = doc.css("span.font-size: 1em;").text.gsub(/\t/, "")
    
    address
  end 
  
  # def self.scrape_phone
  #   doc = Nokogiri::HTML(open(""))
    
  #   phone = self.new 
  #   shop_phone = doc.css("").text.gsub(/\t/, "")
    
  #   phone
  
end