class WelcomeController < ApplicationController

  def homepage
    @memory = Memory.new
  end
end
