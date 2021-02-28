class TechesController < ApplicationController


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
      @teches = Tech.find_by_id(params[:tech_id]) if params[:tech_id]
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
    params.require(:tech).permit(:name, synths_attributes: [:name, :brand, :hybrid, :price, :description])
  end

end
