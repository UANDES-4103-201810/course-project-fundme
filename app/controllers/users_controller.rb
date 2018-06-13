class UsersController < ApplicationController

  def index
    @users = User.all
    authorize! :read, @users
  end

  def new
    @user = user.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    authorize! :read, @user
  end

  def edit
    authorize! :update, @user
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update , @user

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

private
  def user_params
    params.require(:user).permit( :name, :last_name, :email, :role)
  end

end

