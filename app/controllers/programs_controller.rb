class ProgramsController < ApplicationController
  before_filter :find_program, only: [:edit, :update, :show, :destroy]
  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end
  
  def create
    @program = Program.new(params[:program])
    if @program.save
      redirect_to programs_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @program.update_attributes(params[:program])
      redirect_to programs_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @program.destroy
  end
  
  def search
    @programs = Program.all
    respond_to do |format|
      format.json { render json: Program.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_program
      @program = Program.find(params[:id])
    end
end










