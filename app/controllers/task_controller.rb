class TaskController < ApplicationController
  def show
  	project = Project.find(params[:project_id])
  	@tasks = project.tasks.order(:tag)
  	@task = Task.find(params[:id])

  	@prev_task = @task.prev
  	@next_task = @task.next
  end
end
