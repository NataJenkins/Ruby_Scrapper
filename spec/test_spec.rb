# spec/test_spec.rb
require_relative '../bin/scraper'
main = file('https://www3.animeflv.net/')
lol = list(main[0], main[1])

describe 'checks for the web scaper project' do
  it 'check if list return a integer and if that integer is 20' do
    expect(lol.class).to eq Integer
    expect(lol).to eq 20
  end

  it 'check if main return value has the class of array' do
    expect(main.class).to be Array
  end

  it 'check if the first return value of file returns in a nokigiri format' do
    expect(main[0].class).to be Nokogiri::XML::NodeSet
  end

  it 'check if the seccond return value of file method has the class of file' do
    expect(main[1].class).to be File
  end
end
