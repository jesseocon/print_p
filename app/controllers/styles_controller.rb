class StylesController < ApplicationController
  before_filter :find_style, only: [:show, :edit, :update, :destroy]
  def index
    @styles = Style.all
  end

  def new
    @style = Style.new
  end
  
  def create
    @style = Style.new(params[:style])
    if @style.save
      redirect_to style_path(@style)
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @style.update_attributes(params[:style])
      redirect_to style_path(@style)
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @style.destroy
  end
  
  def search
    @styles = Style.all
    respond_to do |format|
      format.json { render json: Style.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_style
      @style = Style.find(params[:id])
    end
end







