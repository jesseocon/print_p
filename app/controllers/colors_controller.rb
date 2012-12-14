class ColorsController < ApplicationController
  before_filter :find_color, only: [:show, :edit, :update, :destroy]
  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end
  
  def create
    @color = Color.new(params[:color])
    if @color.save
      redirect_to colors_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @color.update_attributes(params[:color])
      redirect_to colors_path
    else
      render 'edit'
    end
  end

  def show
    @rsvp_pricing = RsvpPricing.all
  end
  
  def destroy
    @color.destroy
  end
  
  def search
    @colors = Color.all
    respond_to do |format|
      format.json { render json: Color.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_season
      @color = Color.find(params[:id])
    end
end
