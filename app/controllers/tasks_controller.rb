class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = task.new

  end

  def create
    @task = task.new(params(task_params))
    @task.save
  end

  def edit
    @task = task.find(params[:id])
  end

  def update
     @task = task.find(params[:id])
     task.update(params[task])
  end

  def destroy
    @task = task.find(params[:id])
  end

private

def restaurant_params
       params.require(:task).permit(:name, :address)
  end



end
