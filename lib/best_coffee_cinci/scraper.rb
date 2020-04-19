class BestCoffeeCinci::Scraper
  
   def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title h3").each do |shop|
    name = shop.css(":first-child").text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end
  
  def self.scrape_location
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
    locations = doc.css(".component.text h2").each do |location|
    # name = location.css(":first-child").text
    BestCoffeeCinci::Location.new(name)
    end 
  end 
  
end 
