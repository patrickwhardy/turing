class StudentsController < ApplicationController
  def index
    names = Student.all.map { |student| student.name }
    render(text: "#{names}")
  end

  def show
    name = Student.find(params[:id]).name
    render(text: "This students name is #{name} and has an id of #{params[:id]}")
  end
end
