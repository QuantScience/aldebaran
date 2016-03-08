class StepsController < ApplicationController
  before_action :authenticate_user!
  before_action :its_admin?

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  private
    def step_params
      params.require(:step_item).permit(:title, :question, :step_type)
    end

    def its_admin?
      unless current_user.admin?
        redirect_to root_path, :alert => "Lo sentimos, usted no tiene permisos para acceder a esta ruta"
      end
    end
end
