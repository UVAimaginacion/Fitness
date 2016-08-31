class RegistrosController < ApplicationController
  #before_action :authenticate_user!
  before_action :authenticate_user!
  def index
    @users = User.all
    #@events = Event.search(params[:search])
  end


end
