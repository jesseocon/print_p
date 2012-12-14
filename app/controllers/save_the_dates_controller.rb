class SaveTheDatesController < ApplicationController
  before_filter :find_save_the_date, only: [:edit, :update, :show, :destroy]
  def index
    @save_the_dates = SaveTheDate.all
  end

  def new
    @save_the_date = SaveTheDate.new
  end
  
  def create 
    @save_the_date = SaveTheDate.new(params[:save_the_date])
    if @save_the_date.save
      redirect_to save_the_dates_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @save_the_date.update_attributes(params[:save_the_date])
      redirect_to save_the_dates_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @save_the_date.destroy
  end
  
  def search
    @save_the_dates = SaveTheDate.all
    respond_to do |format|
      format.json { render json: SaveTheDate.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private 
    def find_save_the_date
      @save_the_date = SaveTheDate.find(params[:id])
    end
end

















