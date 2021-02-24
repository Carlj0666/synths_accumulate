class TechesController < ApplicationController

  before_action :logged_in?, only: [:new]

  def new
    @tech = Tech.new
    @tech.synths.build
  end

  def create     
    @tech = Tech.new(tech_params)
    @tech = current_user.teches.build(tech_params)
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
    params.require(:tech).permit(:name, synths_attributes: [:brand, :hybrid, :price, :description])
    #synths_attributes comes from the accepts_nested_attributes_for :synths method
  end

end
