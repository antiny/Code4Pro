class ProjectController < ApplicationController

  before_action :authenticate_user!, only: [ :list ]

  def index
  	@projects = Project.all.order("id asc")
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks.order(:tag)

  	@joined = false

  	if !current_user.nil? && !current_user.projects.nil?
  		@joined = current_user.projects.include?(@project)
  	end 

  	@users = @project.users.first(10) || []

    @review = Review.new
    @reviews = @project.reviews
    @has_review = @reviews.find_by(user_id: current_user.id) if current_user
  end

  def list
    @projects = current_user.projects || []
  end 

end
