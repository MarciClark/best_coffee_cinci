class Scraper
  
  
  
  def self.shops 
    doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops"))
    
    shops = doc.css("p.venueName") 
    
    shops.each do |s|
       name = s.text
       ref = s.attr("value")
       BestCoffeeCinci::Shop.new(name, ref)
    end 
  end 
  
  
  
end