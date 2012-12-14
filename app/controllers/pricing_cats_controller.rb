class PricingCatsController < ApplicationController
  before_filter :find_pricing_cat, only: [:edit, :update, :show, :destroy]
  def index
    enclosure = 'Enclosure Cards'
    @pricing_cats = PricingCat.name_sort
    @pricing_hats = PricingCat.get_name(enclosure)
  end

  def new
    @pricing_cat = PricingCat.new
  end
  
  def create
    @pricing_cat = PricingCat.new(params[:pricing_cat])
    if @pricing_cat.save
      redirect_to pricing_cats_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @pricing_cat.update_attributes(params[:pricing_cat])
      redirect_to pricing_cats_path
    else
      render :edit
    end
  end

  def show
    respond_to do |format|
      format.json { render json: @pricing_cat }
    end
  end
  
  def destroy
    @pricing_cat.destroy
  end
  
  private
    def find_pricing_cat
      @pricing_cat = PricingCat.find(params[:id])
    end
end
