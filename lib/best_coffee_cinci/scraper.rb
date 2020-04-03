class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  # def self.all_shops
  #   doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
 
  #   shop = doc.css("h2.text-align:center")
  # end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
    
  #   address = self.new 
  #   shop_address = doc.css("br").text.gsub(/\t/, "")
    
  #   address
  # end 
  
  def self.all_shops
    doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
 
    shop = doc.css("h2.a.href")
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
    address = self.new 
    shop_address = doc.css("span.style").text.gsub(/\t/, "")
    
    address
  end 
  
end