class AssetsController < ApplicationController
  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end
  
  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      respond_to do |format|
        format.json { render json: @asset }
      end
    else
      render :json => { :errors => @asset.errors.full_messages }
    end
  end

  def edit
  end
  
  def update
    if @asset.update_attributes(params[:asset])
      redirect_to assets_path
    else
      render 'edit'
    end
  end

  def show
  end
  
  def destroy
    @asset.destroy
  end
  
  def search
    @assets = Asset.all
    respond_to do |format|
      format.json { render json: Asset.where("fp_filename like ?", "%#{params[:q]}%") }
    end
  end
  
  private
    def find_asset
      @asset = Asset.find(params[:id])
    end
  
end




