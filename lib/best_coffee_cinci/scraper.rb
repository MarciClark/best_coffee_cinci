class BestCoffeeCinci::Scraper
  
  # attr_accessor :shop, :address, :url
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
    shops = doc.css(".component.title").drop(2).each do |shop|
    name = shop.css(":first-child").text
    BestCoffeeCinci::Shop.new(name)
    end 
  binding.pry
  end 
  

  
  
  
  
  
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