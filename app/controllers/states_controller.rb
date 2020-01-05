class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def new
    @states  = State.new
  end

  def create
    State.create(state_params)
    redirect_to root_path
  end

  private

  def state_params
    params.require(:state).permit(:name, :description)
  end
end
