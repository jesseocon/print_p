class ThankYouCardsController < ApplicationController
  before_filter :find_thank_you_card, only: [:edit, :update, :show, :destroy]
  def index
    @thank_you_cards = ThankYouCard.all
  end
  
  def new
    @thank_you_card = ThankYouCard.new
  end
  
  def create
    @thank_you_card = ThankYouCard.new(params[:thank_you_card])
    if @thank_you_card.save
      redirect_to thank_you_cards_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @thank_you_card.update_attributes(params[:thank_you_card])
      redirect_to thank_you_cards_path
    else
      render 'edit'
    end
  end
  
  def show
  end
  
  def destroy
    @thank_you_card.destroy
  end
  
  def search
    @thank_you_cards = ThankYouCard.all
    respond_to do |format|
      format.json { render json: ThankYouCard.where("name like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_thank_you_card
      @thank_you_card = ThankYouCard.find(params[:id])
    end
end










