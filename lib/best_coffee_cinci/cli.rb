class BestCoffeeCinci::CLI 
  
  def call
    puts "Need a jolt?  Here are Cincinnati's best coffee shops!"
    @input = ""
    until @input == "exit"
      get_shops 
      list_shops
      get_user_input
      get_shop_info
      show_more
    end 
    goodbye
  end 
  
  def get_shops
    @shops = Shop.all
  end 
  
  def list_shops
    puts 'Choose a shop you would like more info about.'
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}. #{shop.name}"
    end
  end 
  
  def get_user_input
    user_shop = gets.strip.to_i
    show_shops(user_shop) if valid_input(user_shop, @shops)
  end 
  
  def get_shop_info
  end 
  
  def show_more
    puts "Ready to grab some coffee? Type 'exit' to exit or press any key to see more shops."
    @input = gets.strip
  end 
  
  def goodbye
    puts "Have a brew-tiful day!"
  end 

  
end