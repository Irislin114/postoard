class UsersController < ApplicationController
	def new 
		@user  = User.new
	end

	def create
		 @user = User.new(user_params)
			if @user.save      #if user regist successfully
      				redirect_to root_path   #back to index
			else   #or
				render :new #reload regist form
			end
	end

	private

	def user_params
		params.require(:user).permit(:name, :password)
	end
end