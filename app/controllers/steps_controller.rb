class StepsController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      flash[:notice] = "The step was saved successfully"
      redirect_to steps_path
    else
      flash[:alert] = "There has been an error saving the step"
      render :action => 'new'
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])
    if @step.update(step_params)
      flash[:notice] = "The step was edited successfully"
      redirect_to steps_path
    else
      flash[:alert] = 'There has been an error editing the step'
      render 'edit'
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to steps_path
  end

  private
    def step_params
      params.require(:step).permit(:title, :content, :step_type)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "You don't have access to this route"
      end
    end
end
