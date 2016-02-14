class TaskController < ApplicationController
	
	before_action :authenticate_user!

  def show
  	project = Project.find(params[:project_id])

  	joined = false

  	if !current_user.nil? && !current_user.projects.nil?
  		joined = current_user.projects.include?(project)
  	end

  	if joined
	  	@tasks = project.tasks.order(:tag)
	  	@task = Task.find(params[:id])

	  	@prev_task = @task.prev
	  	@next_task = @task.next
	  else 
	  	flash[:notice] = "Please join this course first!"
	  	redirect_to project
	  end 

  end
end
