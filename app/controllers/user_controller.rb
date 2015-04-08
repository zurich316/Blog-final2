class UserController < ApplicationController
	 def create
 		 @user = user.new(params[:user])
 
  		@user.save
 		 redirect_to @user
	end
	private
	  def user_params
	    params.require(:user).permit(:name)
	  end
end
