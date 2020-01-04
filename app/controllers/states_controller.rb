class StatesController < ApplicationController
  def index
    @state = State.all
  end
end
