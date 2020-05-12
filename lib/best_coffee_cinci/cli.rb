require 'pry'
class BestCoffeeCinci::CLI 
  
  def call
    list_shops
    get_user_input
  end 
  
  def list_shops
    puts "Need a jolt?  Here are Cincinnati's Top 9 Coffee Shops:".colorize(:red)
    @shops = BestCoffeeCinci::Shop.all
    @shops.each do |shop, index| 
      puts "#{shop.name}"
    end
  end 

  def list_info
    BestCoffeeCinci::Scraper.scrape_info
      puts "Address: #{@info}".colorize(:blue)
      puts "Hours: ".colorize(:blue)
      puts "Description: ".colorize(:blue)
    end 
  end
  
  def get_user_input
    input = nil 
    while input != "exit"
      puts "Please pick the number of the shop you would like more info on, 'shops' to go back to the list.".colorize(:green)
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        list_info
        # puts "\n#{@@cyn}Location and Phone Number#{@info}\n#{@@white}"
      elsif input == "shops"
        list_shops
      elsif input == "exit"
        goodbye
      else 
        puts "I'm sorry, I do not recognize your response.".colorize(:light_red)
      end 
    end 
  end 
  
  def goodbye
    puts "Have a brew-tiful day!".colorize(:magenta)
  end 
