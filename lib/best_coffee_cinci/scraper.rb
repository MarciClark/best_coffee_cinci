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
    doc = Nokogiri::HTML(open("https://sprudge.com/a-coffee-drinkers-guide-to-cincinnati-141292.html"))
 
    shop = doc.css("p.strong")
  end 
  
  def self.scrape_address
    doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
    address = self.new 
    shop_address = doc.css("div.arconix-box.arconix-box-gray").text.gsub(/\t/, "")
    
    address
  end 
  
end