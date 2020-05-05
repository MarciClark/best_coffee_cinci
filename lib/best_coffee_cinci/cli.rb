require 'pry'
class BestCoffeeCinci::CLI 
  
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call
    list_shops
    get_user_input
    list_info
  end 
  
  def list_shops
    puts "\n#{@@muted}Need a jolt?  Here are Cincinnati's Top 9 Coffee Shops:#{@@white}\n"
    @shops = BestCoffeeCinci::Shop.all
    @shops.each do |shop, index| 
      puts "#{shop.name}"
    end
  end 
  
  def get_user_input
    input = nil 
    while input != "exit"
      puts "\n#{@@grn}Please pick the number of the shop you would like more info on, 'shops' to go back to the list.\n#{@@white}"
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        puts "\n#{@@cyn}Location and Phone Number#{@info}\n#{@@white}"
      elsif input == "shops"
        list_shops
      elsif input == "exit"
        goodbye
      else 
        puts "\n#{@@muted}I'm sorry, I do not recognize your response\n#{@@white}"
      end 
    end 
  end 

  def list_info
    BestCoffeeCinci::Scraper.scrape_info
    puts @shop_info
  end
  
  def goodbye
    puts "\n#{@@mag}Have a brew-tiful day!\n#{@@white}"
  end 
end
