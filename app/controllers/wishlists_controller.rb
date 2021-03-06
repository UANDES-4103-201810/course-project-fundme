
class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]

  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = Wishlist.where(:user_id => current_user.id)
    @wishlistsprojects = WishlistProject.where(:wishlist_id => @wishlists)

  end

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show
    authorize! :read,  @wishlist
  end

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
    authorize! :create, @wishlist
  end

  # GET /wishlists/1/edit
  def edit
    authorize! :update, @wishlist
  end

  # POST /wishlists
  # POST /wishlists.json
  def create
    @wishlist = Wishlist.new(wishlist_params)

    respond_to do |format|
      if @wishlist.save
        format.html { redirect_to @wishlist, notice: 'Wishlist was successfully created.' }
        format.json { render :show, status: :created, location: @wishlist }
      else
        format.html { render :new }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlists/1
  # PATCH/PUT /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to @wishlist, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @wishlist
  end

  def addproject
    if current_user.wishlist.nil?
      current_user.wishlist = Wishlist.new(user_id: current_user.id)
    end
    @project = params[:project_id]
    if WishlistProject.where(:project_id => @project).nil?
    else
      @wishlistproject = WishlistProject.new(wishlist_id: current_user.wishlist.id, project_id: @project)
      @wishlistproject.save
    end


    redirect_to Rails.application.routes.recognize_path(request.referer), notice: 'Project added to Wishlist'#[:action]
    # render(:action => 'index')

  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
  def destroy
    @wishlist.destroy
    authorize! :destroy, @wishlist
    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: 'Wishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def wishlist_params
    params.fetch(:wishlist, {})
  end
end
