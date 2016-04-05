class TeachersController < ApplicationController
  def show
    render(text: "this is teachers show")
  end

  def index
    render(text: "this is teachers index")
  end
end
