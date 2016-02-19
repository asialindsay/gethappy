class DaysMemoriesController < ApplicationController

  def create
    @memory = Memory.create(memory_params)
    @memory.users << current_user
    @memory.save
    redirect_to @memory
  end
end
