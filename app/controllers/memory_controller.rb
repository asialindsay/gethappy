class MemoryController < ApplicationController

  layout false
  def index
    # render('hello') - often used with if/else e.g. for logging in
  end

  # def hello
  # end
  #
  # def other_hello
  #   redirect_to(:controller => 'memory', :action => 'index')
  #   #redirect_to is different from render bc it changes the URL
  # end
  #
  # def lynda
  #   redirect_to('http://www.lynda.com')
  # end

  def new
      @memory = Memory.new
    end

    def create
      @memory = Memory.create(memory_params)
      @memory.users << current_user
      @memory.save
      redirect_to @memory
    end

    def index
      @memories = Memory.all
      #  respond_to do |format|
      #   format.html
      #   format.js {}
      # end
    end

    def show
      @memory = Memory.find(params[:id])
    #   @hash = Gmaps4rails.build_markers (@restaurant) do |restaurant, marker|
    #    marker.lat restaurant.latitude
    #    marker.lng restaurant.longitude
    #  end
    end

    private
    def memory_params
      params.require(:memory).permit(:memory_text, :user_id, :user)
    end
  end
