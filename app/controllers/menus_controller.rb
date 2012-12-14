class MenusController < ApplicationController
  before_filter :find_menu, only: [:edit, :update, :show, :destroy]
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to menus_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @menu.update_attributes(params[:menu])
      redirect_to menus_path
    else 
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @menu.destroy
  end
  
  def search
    @menus = Menu.all
    respond_to do |format|
      format.json { render json: Menu.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private 
  
    def find_menu
      @menu = Menu.find(params[:id])
    end
end











