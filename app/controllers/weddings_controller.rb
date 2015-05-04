class WeddingsController < ApplicationController
  before_action :set_wedding , only: [:show, :destroy, :edit, :update]

  def new
  	@wedding = Wedding.new
  end
  
  def create
  	@wedding = Wedding.new(wedding_params)
  	if @wedding.save
       redirect_to edit_wedding_path(@wedding)
    end
  end

  def show
  end

  def index
  	@weddings = Wedding.all
  end

  def destroy
  	@wedding.destroy
  	redirect_to weddings_path
  end
  
  def update
    if @wedding.update(wedding_params)
    	redirect_to edit_wedding_path(@wedding)
    end
  end
private

  def wedding_params
  	params.require(:wedding).permit(:title, gifts_attributes: [:name, :quantity, :id, :_destroy])
  end

  def set_wedding
  	@wedding = Wedding.find(params[:id])
  end

end


