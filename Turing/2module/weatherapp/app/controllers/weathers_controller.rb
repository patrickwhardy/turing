

class WeathersController < ApplicationController
  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.new(formatted_weather)
  end
end
