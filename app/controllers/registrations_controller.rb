class RegistrationsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]

  def new
    User.new
  end

  def create
  end
end
