class FourteenersController < ApplicationController
  def index
    @fourteeners = Fourteener.all
  end

  def new
    @fourteener = Fourteener.new
  end

  def create
    @fourteener = Fourteener.new(fourteener_params)
    if @fourteener.save
      redirect_to @fourteener
    else
      render :new
    end
  end

  def show
    @fourteener = Fourteener.find(params[:id])
  end

  def edit
    @fourteener = Fourteener.find(params[:id])
  end

  def update
    @fourteener = Fourteener.find(params[:id])
    @fourteener.update(fourteener_params)
    redirect_to @fourteener
  end

  private

  def fourteener_params
    params.require(:fourteener).permit(:name, :elevation, :image)
  end
end
