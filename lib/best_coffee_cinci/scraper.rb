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
 
    locations = doc.css(".component.text br").each do |location|
    name = location.css("").text
    BestCoffeeCinci::Location.new
    end 
  end
  
  def scrape_hours 
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    
    hours = doc.css(".table table-striped").text.strip 
    table = doc.css("tr")
    table.each do |table|
      hours = table.text.strip 
      shop.hours << info 
    end 
  end 
end 
