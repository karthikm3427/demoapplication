class TasksController < ApplicationController
  respond_to :html, :js

  def new
    @task = Task.new
  end

  def create
    @task  = Task.create(task_params)
    @tasks = Task.all
  end

  def edit
    @task = Task.find(params[:id]) 
    @tasks = Task.all
  end
   
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    @tasks = Task.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
  end


  private

  def task_params
      params.require(:task).permit(:description, :deadline)
  end
end
