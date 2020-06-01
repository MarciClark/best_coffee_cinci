require_relative "./best_coffee_cinci/version"
require_relative "./best_coffee_cinci/cli"
require_relative "./best_coffee_cinci/scraper"
require_relative "./best_coffee_cinci/shop"

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'
require 'colorized_string'
require 'word_wrap'
require 'word_wrap/core_ext'


module BestCoffeeCinci
  class Error < StandardError; end
  # Your code goes here...
end