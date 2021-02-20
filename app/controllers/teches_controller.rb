class TechesController < ApplicationController

  def new
    @tech = Tech.new
  end

  def create
    @tech = Tech.new(tech_params)
    if @tech.save
      redirect_to tech_path(@tech)
    else
      render :new
    end
  end

  def show
    @tech = Tech.find(params[:id])
  end

  def index
    @teches = Tech.all 
  end

  private

  def tech_params
    params.require(:tech).permit(:name)
  end
end
