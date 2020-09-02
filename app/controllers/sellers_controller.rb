class SellersController < ApplicationController
  before_action :set_user, except: :index  
  before_action :check_buyer, only: :index

  def index
    all_users = User.all
    @sellers = all_users.select do |user|
      user.seller
    end
  end

  def show
    @inventory = @user.selling_inventory
  end

  def edit
    if current_user != @user
      redirect_to seller_path, notice: "You can't edit this profile!"
    end
  end

  def update
    if @user.update(user_params)
      redirect_to seller_path(@user), notice: 'Your profile was successfully updated.'
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

  def check_buyer
    redirect_to sellers_path if current_user.seller
   end  

end
