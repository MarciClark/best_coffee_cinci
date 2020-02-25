require_relative "./best_coffee_cinci/version"
require_relative "./best_coffee_cinci/cli"
require_relative "./best_coffee_cinci/scraper"
require_relative "./best_coffee_cinci/shop_info"
require_relative "./best_coffee_cinci/shop"

require 'pry'
require 'nokogiri'

module BestCoffeeCinci
  class Error < StandardError; end
  # Your code goes here...
end
