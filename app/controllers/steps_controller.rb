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
      flash[:notice] = "The FAQ Item was saved successfully"
      redirect_to steps_path
    else
      flash[:alert] = "There has been an error saving the FAQ Item"
      render :action => 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
    def step_params
      params.require(:step).permit(:title, :content, :step_type)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "Lo sentimos, usted no tiene permisos para acceder a esta ruta"
      end
    end
end
