def file(url)
  file = File.new('index.html', 'w')
  page = HTTParty.get(url)
  response = Nokogiri::HTML(page)
  main_list = response.css('ul.ListEpisodios')
  lol2 = main_list.css('img')
  [lol2, file]
end
