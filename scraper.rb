#!/usr/bin/ruby
require 'nokogiri'
require 'httparty'

url = "https://www3.animeflv.net/"
page = HTTParty.get(url)
response = Nokogiri::HTML(page)
main_list = response.css("ul.ListEpisodios")
x = 0
lol1 = main_list.css("strong.Title")[x]
while x < 20
  lol1 = main_list.css("strong.Title")[x]
  puts lol1.text
  x += 1
end
