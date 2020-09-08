class BuyersController < ApplicationController
  before_action :set_user, except: :index
  before_action :check_seller, only: :index

  def index
    @buyers = User.where(seller: false)
    @markers = @buyers.geocoded.map do |buyer|
      {
        lat: buyer.lat,
        lng: buyer.long,
        iconSize: [45, 45],
        url: buyers_url,
        image: buyer.photo.attached? ? cl_image_path(buyer.photo&.key) : helpers.asset_url('buyer_icon2.jpg')
      }
    end
  end

  def show
    @order = @user.order
  end

  def edit
    if current_user != @user
      redirect_to buyer_path, notice: "You can't edit this profile!"
    end
  end

  def update
    puts user_params
    if @user.update(user_params)
      redirect_to buyer_path(@user), notice: 'Your profile was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :address, :bio, :lat, :long, :seller, :photo)
  end

  def check_seller
    redirect_to sellers_path unless current_user.seller
  end
   
end
