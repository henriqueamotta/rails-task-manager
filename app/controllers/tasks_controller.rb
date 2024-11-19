class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit] #update destroy

  def index
  @tasks = Task.all
  end

  def new
    @task = Task.new
  end

def create
  @task = Task.new(task_params)
  @task.save
  redirect_to tasks_path
end

def show
end

def edit
  @task.save
end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
