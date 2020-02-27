require_relative "../best_coffee_cinci/cli"
require_relative "../lib/best_coffee_cinci/scraper"
require_relative "../lib/best_coffee_cinci/shop_info"
require_relative "../lib/best_coffee_cinci/shop"
require_relative "../lib/best_coffee_cinci/version"


require 'pry'
require 'nokogiri'
require 'open-uri'

module BestCoffeeCinci
  class Error < StandardError; end
  # Your code goes here...
end

