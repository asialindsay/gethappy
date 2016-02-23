class WelcomeController < ApplicationController

  def homepage
    @memory = Memory.new
    session[:message] = "Here's the message"
    cookies[:beef] = "Protein"
  end
end
