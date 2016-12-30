class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  def index
    @plans = Plan.all
  end

  def new
    @new_plan = Plan.new

    if params[:title]
      @new_plan.title = params[:title]
      @new_plan.date = params[:date]
      @new_plan.meal = params[:meal]
      @new_plan.exercise = params[:exercise]
      @new_plan.meditation = params[:meditation]
      @new_plan.user_id = params[:user_id].to_i
    end
  end

  def create
  @new_plan = Plan.new(plan_params)
  @new_plan.user = current_user
  if @new_plan.save
    redirect_to user_path(current_user)
  else
    render :new
  end
end

  def show
  @plan = Plan.find(params[:id])
  end


  def update
    if @plan.update(plan_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end


  private

  def plan_params
    params.require(:plan).permit(:title, :date, :meal, :exercise, :meditation, :user_id)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end


  def require_permission
    if current_user != Plan.find(params[:id]).user
      redirect_to root_path
        #Or do something else here
      end
    end
end
