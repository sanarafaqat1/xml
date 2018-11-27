require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu, :array_calories

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
    @array_calories = []
  end

  # Place your methods here
  def price_find
    @menu.search('price')
    @menu.xpath('/breakfast_menu/food/price'.to_i)
  end
  def find_calories_1000
    @menu.xpath('/breakfast_menu/food/calories')
  end
  def calories_array
      @menu.search('calories')
      get_xpath_calories.each do |values|
      @array_calories << value.text.to_i
     end
    puts array_calories
  end
  def find_waffles
    @menu.xpath('/breakfast_menu/food/waffles')
    end
  end
new = GuiseppesMenu.new
new.price_find.first
