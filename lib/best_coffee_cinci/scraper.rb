class BestCoffeeCinci::Scraper
  
   def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title h2").each do |shop|
    name = shop.css(":first-child").text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end
  
  # def self.scrape_addresses
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
  #   addresses = doc.css(".component.text").each do |address|
  #   name = address.css(":first-child").text
  #   # BestCoffeeCinci::Address.new(name)
  #   end 
  # end 
  
end 
