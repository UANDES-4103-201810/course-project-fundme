class WishlistProjectsController < ApplicationController
  before_action :set_wishlist_project, only: [:show, :edit, :update, :destroy]

  # GET /wishlist_projects
  # GET /wishlist_projects.json
  def index
    @wishlist_projects = WishlistProject.all
  end

  # GET /wishlist_projects/1
  # GET /wishlist_projects/1.json
  def show
  end

  # GET /wishlist_projects/new
  def new
    @wishlist_project = WishlistProject.new
  end

  # GET /wishlist_projects/1/edit
  def edit
  end

  # POST /wishlist_projects
  # POST /wishlist_projects.json
  def create
    @wishlist_project = WishlistProject.new(wishlist_project_params)

    respond_to do |format|
      if @wishlist_project.save
        format.html { redirect_to @wishlist_project, notice: 'Wishlist project was successfully created.' }
        format.json { render :show, status: :created, location: @wishlist_project }
      else
        format.html { render :new }
        format.json { render json: @wishlist_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlist_projects/1
  # PATCH/PUT /wishlist_projects/1.json
  def update
    respond_to do |format|
      if @wishlist_project.update(wishlist_project_params)
        format.html { redirect_to @wishlist_project, notice: 'Wishlist project was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist_project }
      else
        format.html { render :edit }
        format.json { render json: @wishlist_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlist_projects/1
  # DELETE /wishlist_projects/1.json
  def destroy
    @wishlist_project.destroy
    respond_to do |format|
      format.html { redirect_to wishlist_projects_url, notice: 'Wishlist project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist_project
      @wishlist_project = WishlistProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_project_params
      params.require(:wishlist_project).permit(:wishlist_id, :project_id)
    end
end
