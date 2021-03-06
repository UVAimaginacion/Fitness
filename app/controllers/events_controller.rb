class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    #@events = Event.all
    @events = Event.search(params[:search])
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end
  def edit
    @event = Event.find(params[:id])
  end
  def create
    @event =current_user.events.new(event_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  private


  def event_params
    params.require(:event).permit(:responsable, :nombreEven, :lugar, :fechaHora, :descripcion, :telefono, :email, :departamento)
  end
end
