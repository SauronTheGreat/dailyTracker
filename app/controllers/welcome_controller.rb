class WelcomeController < ApplicationController
  def index

  end

  def newTask
    @task = Task.new
  end

  def createTask
    task =  Task.new
    task.project_id = params[:project_id]
    task.desc = params[:desc]
    task.user_id = current_user.id
    task.save!
    redirect_to "/",:notice => "Task Recorded successfully"
  end
end
