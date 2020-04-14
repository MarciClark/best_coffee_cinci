class BestCoffeeCinci::Scraper
  
  # attr_accessor :shop, :address, :url
  
  # def self.scrape_shops
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
  #   shop = doc.css("div.component title").text.gsub(/\t/, "")
  #   BestCoffeeCinci::Shop.new(name)
  # end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
  #   address = self.new 
  #   shop_address = doc.css("div.arconix-box.arconix-box-gray").text.gsub(/\t/, "")
    
  #   address
  # end 
  
  # def self.all_shops
  #   doc = Nokogiri::HTML(open("http://kematis.com/coffee-near-me/coffee-shops-in-cincinnati-ohio/"))
  #   shops = doc.css("td#align") 
    
  #   shops.each do |s|
  #   name = s.text
  #   ref = s.attr("value")
  #   BestCoffeeCinci::Shop.new(name, ref)
  #   end 
  # end 
  
  def self.scrape_shops
    shop = shop.new 
    
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    name = doc.search("div.component title").text
    address = doc.search("div.component text").text 
  end 
  
end 