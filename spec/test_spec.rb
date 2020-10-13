# spec/test_spec.rb
require './bin/scraper'
include RSpec::Matchers
main = file('https://www3.animeflv.net/')
lol = list(main[0], main[1])

describe 'checks for the web scaper project' do

  describe 'check if list return a integer and if that integer is 20' do
    expect(lol.class).to eq Integer
    expect(lol).to eq 20
  end

  describe 'check if main return value has the class of array' do
    expect(main.class).to be Array
  end

  describe 'check if the first return value of file returns in a nokigiri format' do
    expect(main[0].class).to be Nokogiri::XML::NodeSet
  end

  describe 'check if the seccond return value of file has the class of file' do
    expect(main[1].class).to be File
  end
end
