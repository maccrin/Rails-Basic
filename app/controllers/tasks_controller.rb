class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks=Task.all
  end

  def show
    @task=Task.find(params[:id])
  end

  def new
    @task=Task.new
  end

  def create
    
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to @task ,notice:"Task has been created successfully"
    else
      puts @task.errors.full_messages # Debug output to check validation errors
      render :new
    end
  end

    def edit
      @task=Task.find(params[:id])
    end

    def update
      @task=Task.find(params[:id])
       if
        @task.update(task_params)
         redirect_to tasks_path, notice: 'Task was successfully updated.'
       else
       render :edit
    end
  end
    def destroy 
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path ,notice:"Task has been deleted"
    end
 
    private
    
    def task_params
      params.require(:task).permit(:title, :description, :due_date, :status)
    end
  end