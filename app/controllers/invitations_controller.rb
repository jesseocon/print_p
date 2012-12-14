class InvitationsController < ApplicationController
  before_filter :find_invitation, only: [:show, :edit, :update, :destroy]
  def index
    @invitations = Invitation.where(featured: true)
    @associated_invitations = Invitation.where(featured: false)
  end

  def new
    @invitation = Invitation.new
  end
  
  def create
    @invitation = Invitation.new(params[:invitation])
    if @invitation.save
      redirect_to invitation_path(@invitation)
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @invitation.update_attributes(params[:invitation])
      redirect_to invitation_path(@invitation)
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @invitation.destroy
  end
  
  def search  
    respond_to do |format|
      format.json { render json: Invitation.where("name like ?", "%#{params[:q]}%")}
    end
  end
  
  private
    def find_invitation
      @invitation = Invitation.find(params[:id])
    end
end







