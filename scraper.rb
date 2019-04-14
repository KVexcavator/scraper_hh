require 'nokogiri'
require 'byebug'
require 'httparty'

def scraper
  url='https://hh.ru/'
  unparsed_page=HTTParty.get(url)
  parsed_page=Nokogiri::HTML(unparsed_page)
  byebug
end

scraper
