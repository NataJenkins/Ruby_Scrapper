#!/usr/bin/ruby
require 'nokogiri'
require 'httparty'
require_relative '../lib/logic'

def clean
  puts "\e[H\e[2J"
end

url = 'https://www3.animeflv.net/'
file_class = Logic.new
html = file_class.file(url)
html[1].puts('<h1>New Animes</h1>')
html[1].puts('<style> body {background-color: black;} h3 {color: white;} </style>')
html[1].puts("<div style='display: flex; flex-wrap: wrap'>")
file_class.list(html[0], html[1])
html[1].puts('</div>')
html[1].close
puts 'Done now see the index.html file'
