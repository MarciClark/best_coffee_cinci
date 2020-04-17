class BestCoffeeCinci::Scraper
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title").drop(2).each do |shop|
    name = shop.css(":first-child").text
    BestCoffeeCinci::Shop.new(name)
    end 
  end 
  
  # def self.scrape_info
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
  #   info = doc.css(".component.text").each do |info|
  #   name = info.css(":first-child").text
  #   # BestCoffeeCinci::Shop.new(name)
  #   end 
  # end 
  
end 