require 'Nokogiri'

class GuiseppesMenu
  attr_accessor :menu
  def initialize
    @menu = Nokogiri::XML(File.open('xml_menu.xml'))
  end
  def get_menu_names
    @menu.search('name')
  end
  def get_menu_food_item
    @menu.search('food')
  end
  #Absolute Path for calories
  def get_xpath_calories
    @menu.xpath('/breakfast_menu/food/calories')
  end
  def get_xpath_names
    @menu.xpath('//name')
  end
end

guiseppes = GuiseppesMenu.new
puts guiseppes.get_menu_names[0]
puts guiseppes.get_menu_names.length
puts guiseppes.get_menu_names.last.text
puts guiseppes.get_xpath_calories[0].text
puts guiseppes.get_xpath_names[1].text

# puts guiseppes.get_menu_food_item
