class ToolsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @tools = @user.tools
  end

  def destroy
    Tool.find(params[:id]).destroy
    redirect_to user_tools_path
  end

  def new
    @user = User.find(params[:user_id])
    @tool = @user.tools.new
  end

  def create
    @user = User.find(params[:user_id])
    @tool = @user.tools.new(tool_params)
    if @tool.save
      session[:most_recent_tool_id] = @tool.id
      flash[:notice] = "you have successfully created a tool"
      redirect_to user_tools_path(@user)
    else
      flash[:error] = @tool.errors.full_messages.join(", ")
      redirect_to new_user_tool_path
    end
  end

  def show
    @tool = User.tools.find(params[:id])
  end

  # def clear_session
  #   session.delete(:most_recent_tool_id)
  # end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :quantity)
  end
end
