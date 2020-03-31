class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
 
    shops = doc.css("h2.text.align.center")
  end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
    
  #   address = self.new 
  #   shop_address = doc.css("br").text.gsub(/\t/, "")
    
  #   address
  # end 
  
  # def self.scrape_phone
  #   doc = Nokogiri::HTML(open(""))
    
  #   phone = self.new 
  #   shop_phone = doc.css("").text.gsub(/\t/, "")
    
  #   phone
  
end