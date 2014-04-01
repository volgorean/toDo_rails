class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:description => params[:description], :complete => params[:complete])
      redirect_to '/tasks'
    else
      render :edit
    end
  end

  def new_task
    @task = Task.new
    render :new_task
  end

  def create
    @task = Task.create(:description => params[:description])
    redirect_to '/tasks'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/tasks'
  end
end
