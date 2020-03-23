class Shop_address
  
  def shop_address
    Scraper.scrape_shop.address(self) if @shops.empty?
  end
  
end 