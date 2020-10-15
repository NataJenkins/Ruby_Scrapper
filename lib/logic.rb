class Logic
  def file(url)
    file = File.new('index.html', 'w')
    page = HTTParty.get(url)
    response = Nokogiri::HTML(page)
    main_list = response.css('ul.ListEpisodios')
    lol2 = main_list.css('img')
    clean
    [lol2, file]
  end

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
end
