require 'faraday'
require 'json'
require 'pp'

class Weather < ActiveRecord::Base

  def initialize
    data = get_denver_weather
    byebug
  end

  def get_denver_weather
    response = Faraday.get('http://api.openweathermap.org/data/2.5/weather?q=Denver,us&units=imperial&APPID=442eba5b3e3a3ae8ead5698479bcdaa8')
    raw_data = response.body
    data = JSON.parse(raw_data)
    pp data
  end

  def formatted_weather
  end
end
