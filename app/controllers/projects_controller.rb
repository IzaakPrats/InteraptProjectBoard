class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    if user_signed_in?
      @project = current_user.projects.new
    end
  end
end
