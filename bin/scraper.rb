#!/usr/bin/ruby
require 'nokogiri'
require 'httparty'
require_relative '../lib/logic'

def list(img_file, file)
  test_value = true
  counter = 0
  while test_value == true
    file.puts("<div style='margin-left: 100px; margin-bottom: 100px;'>")
    list = img_file[counter].values
    file.puts("<h3>#{list[1]}</h3>")
    file.puts("<img src='https://www3.animeflv.net/#{list[0]}' width='300' height='300'>")
    counter += 1
    file.puts('</div>')
    test_value = false if img_file[counter].nil?
  end
  counter
end

def clean
  puts "\e[H\e[2J"
end

url = 'https://www3.animeflv.net/'
html = file(url)
html[1].puts('<h1>New Animes</h1>')
html[1].puts('<style> body {background-color: black;} h3 {color: white;} </style>')
html[1].puts("<div style='display: flex; flex-wrap: wrap'>")
list(html[0], html[1])
html[1].puts('</div>')
html[1].close
puts "Done now see the index.html file"
