class BestCoffeeCinci::CLI 
  
  def call
    puts "Need a jolt?  Here are Cincinnati's best coffee shops!"
    @input = ""
    until @input == "exit"
      get_shops 
      list_shop
      get_user_input
      get_shop_info
      show_more
    end 
    goodbye
  end 
  
  def get_shops
    @shops = ['Coffee Emporium', '1215 Wine Bar and Coffee Lab', 'Coffee Emporium 2', 'Urbana Coffee', 'Collective Espresso', 'Deeper Roots Coffee', 'Sidewinder Coffee + Tea', 'BLOC Coffee Company', 'Luckman Coffee Company', 'Collective Espresso 2', 'Deeper Roots 2', 'Highland Coffee House', 'Rohs Street Coffee', 'Starbucks', 'Kittys Coffee']
  end 
  
  def list_shop
    puts 'Choose a shop to get its address.'
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}. #{shop}"
    end
  end 
  
  def get_user_input
    user_shop = gets.strip.to_i
    show_shop_address(user_shop) if valid_input(user_shop, @shops)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  #V2, 1:00
  
  def show_shop_address(user_shop)
    shop = @shops[user_shop - 1]
    shop.get_shop_address
    puts "Here is the address for #{shop.name}"
    shop.shop_address.each.with_index(1) do |shop_address, index|
      puts "#{index}. #{shop_address.name}"
    end
    get_user_input(shop)
  end 
  
  def get_shop_address
    puts shop.name
    shop.shop_info.each {|i| puts "- #{i}"}
  end 
  
  def show_more
    puts "Ready to grab some coffee? Type 'exit' to exit or press any key to see more shops."
    @input = gets.strip
  end 
  
  def goodbye
    puts "Have a brew-tiful day!"
  end 

  
end


  # show_shop_info = show_shop_address
  # get_shop_info = get_shop_address
  # shop_info = shop_address