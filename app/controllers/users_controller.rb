class UsersController < ApplicationController

  def index
    @users = User.all
    authorize! :read, @users
  end

  def show
    @user = User.find(params[:id])
    authorize! :read, @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    authorize! :destroy, @user

    respond_to do |format|
      format.html { redirect_to users_index_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

end

