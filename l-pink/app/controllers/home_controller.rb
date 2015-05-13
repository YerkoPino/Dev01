class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to proyectos_path
  	end
  end
end
