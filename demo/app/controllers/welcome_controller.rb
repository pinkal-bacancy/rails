class WelcomeController < ApplicationController
  def index

  end
  def new
  	@welcome = Welcome.new
  end
  

end
