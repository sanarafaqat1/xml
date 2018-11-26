require 'spec_helper'
require 'nokogiri'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.price_find.each do|price|
    expect(price.text).to be < 10
   end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
     @xml_menu.find_calories.each do|calories|
       expect(calories.text).to be < 1000
     end
  end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    @xml_menu.find_waffles.each do|waffles|
      expect(waffles.text).to eq 'waffles'
  end
end
