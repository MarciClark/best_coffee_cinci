class BestCoffeeCinci::Scraper
  
  # attr_accessor :shop, :address, :url
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
    shops = doc.css(".component-title").text
    BestCoffeeCinci::Shop.new(name)
    
    shops.each do |shop|
      puts shop.text.strip
    end 
  end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    
  #   address = self.new 
  #   shop_address = doc.css(".component-text").text.gsub(/\t/, "")
    
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
  
  # def self.scrape_shops
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
  #   name = doc.css("div.component title").text
  #   address = doc.css("div.component text").text 
    
  #   BestCoffeeCinci::Shop.new(name)
  # end 
  
end 