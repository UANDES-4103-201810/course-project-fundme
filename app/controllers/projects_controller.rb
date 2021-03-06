class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    if params[:project] and params[:project][:category_id]
      @projects = Project.search(params[:project][:category_id]).order("created_at DESC")

    elsif params[:search]
      @projects = Project.search(params[:search]).order("created_at DESC")

    else
      @projects = Project.all.order("created_at DESC")

    end

  end

  def myprojects
    @mprojects = Project.where(:user_id => current_user.id)

  end

  def outstandings
    @outstandings = Project.where(:outstanding => true)

  end
  # GET /projects/1
  # GET /projects/1.json
  def show

  end
  def downImage
    @project = Project.new
    image_url = params[:image_url]
    @project.image = URI.parse(image_url)
  end
  # GET /projects/new
  def new
    @project = Project.new
    authorize! :create , @project
  end

  # GET /projects/1/edit
  def edit
    authorize! :update , @project
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update , @project

  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    authorize! :destroy , @project

    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project).permit( :video, :goal_amount, :category_id, :description, :marckdown, :days_to_go, :status, :title, :image, :user_id, :outstanding)
  end
end