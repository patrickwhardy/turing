class ToolsController < ApplicationController

  def index
    @tools = User.tools
  end

  def destroy
    Tool.find(params[:id]).destroy
    redirect_to tools_path
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      session[:most_recent_tool_id] = @tool.id
      flash[:notice] = "you have successfully created a tool"
      redirect_to tool_path(@tool.id)
    else
      flash[:error] = @tool.errors.full_messages.join(", ")
      redirect_to new_tool_path
    end
  end

  def show
    @tool = Tool.find(params[:id])
  end

  # def clear_session
  #   session.delete(:most_recent_tool_id)
  # end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :quantity)
  end
end
