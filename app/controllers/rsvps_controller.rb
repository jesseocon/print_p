class RsvpsController < ApplicationController
  before_filter :find_rsvp, only: [:edit, :update, :show, :destroy]
  def index
    @rsvps = Rsvp.all
  end

  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(params[:rsvp])
    if @rsvp.save
      redirect_to rsvps_path
    else
      render 'edit'
    end
  end

  def edit
  end
  
  def update
    if @rsvp.update_attributes(params[:rsvp])
      redirect_to rsvps_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @rsvp.destroy
  end
  
  def search
    @rsvps = Rsvp.all
    respond_to do |format|
      format.json { render json: Rsvp.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
  
    def find_rsvp
      @rsvp = Rsvp.find(params[:id])
    end
end












