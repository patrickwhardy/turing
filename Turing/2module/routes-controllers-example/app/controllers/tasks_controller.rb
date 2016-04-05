class TasksController < ApplicationController
  def index
    render(text: "what has in wheres it at for now?")
  end

  def view
    render(text: "this is a form")
  end

  def show
    render(text: "this is showing a task")
  end

  def edit
    render(text: "this is the edit page ")
  end
end
