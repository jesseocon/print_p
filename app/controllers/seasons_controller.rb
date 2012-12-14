class SeasonsController < ApplicationController
  before_filter :find_season, only: [:show, :edit, :update, :destroy]
  def index
    @seasons = Season.all
  end

  def new
    @season = Season.new
  end
  
  def create
    @season = Season.new(params[:season])
    if @season.save
      redirect_to seasons_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @season.update_attributes(params[:season])
      redirect_to seasons_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @season.destroy
  end
  
  def search
    @seasons = Season.all
    respond_to do |format|
      format.json { render json: Season.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_season
      @season = Season.find(params[:id])
    end
end
