class InvitationPricingsController < ApplicationController
  before_filter :find_pricing, only: [:edit, :update, :show, :destroy]
  def index
    @invitation_pricings = InvitationPricing.order_by_cat
  end

  def new
    @invitation_pricing = InvitationPricing.new
  end
  
  def create
    @invitation_pricing = InvitationPricing.new(params[:invitation_pricing])
    if @invitation_pricing.save
      redirect_to invitation_pricings_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @invitation_pricing.update_attributes(params[:invitation_pricing])
      redirect_to invitation_pricings_path
    else
      render :edit
    end
  end

  def show
    respond_to do |format|
      format.json { render json: @invitation_pricing }
    end
  end
  
  def destroy
    @invitation_pricing.destroy
  end
  
  private
    def find_pricing
      @invitation_pricing = InvitationPricing.find(params[:id])
    end
end
