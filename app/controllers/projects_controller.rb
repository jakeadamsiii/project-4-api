class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    @project = Project.new(Uploader.upload(project_params))
    @project.user = current_user

    project_video_data = project_params

    if project_video_data[:embed_code]
      project_video_data[:embed_code].match(%r{\?v=(.*)})
      project_video_data[:youtube_id] = $1
      project_video_data.delete(:embed_code)
    end

    p "*** here is the project *** #{@project.image}"
    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    return render json: { errors: ["Unauthorized"] } if @project.user != current_user
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    return render json: { errors: ["Unauthorized"] } if @project.user != current_user
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :category_id, :end_date, :brief, :video, :target_amount, :user_id, :base64)
    end
end
