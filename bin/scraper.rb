#!/usr/bin/ruby
require 'nokogiri'
require 'httparty'

file = File.new("index.html", "w")
file.puts("<h1>New Animes</h1>")
url = "https://www3.animeflv.net/"
page = HTTParty.get(url)
response = Nokogiri::HTML(page)
main_list = response.css("ul.ListEpisodios")
x = 0
lol2 = main_list.css("img")
test_value = true
file.puts("<style> body {background-color: black;} h3 {color: white;} </style>")
file.puts("<div style='display: flex; flex-wrap: wrap'>")
while test_value == true
  file.puts("<div style='margin-left: 100px; margin-bottom: 100px;'>")
  list = lol2[x].values
  img = list[0]
  art = list[1]
  file.puts("<h3>#{list[1]}</h3>")
  file.puts("<img src='https://www3.animeflv.net/#{list[0]}' width='300' height='300'>")
  x += 1
  file.puts("</div>")
  if lol2[x] == nil
    test_value = false
  end
end
file.puts("</div>")
file.close
