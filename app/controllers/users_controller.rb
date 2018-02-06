class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  	# debugger
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		#Handle a succesful save
  		flash[:success] = 'Welcome to sample hrdo!'
  		redirect_to @user
  	else
  		render 'new'
  	end
  end


  private
  	def user_params
  		params.require(:user).permit(:username, :email, :password, :password_confirmation)
  	end
end
