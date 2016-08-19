class WelcomeController < ApplicationController
  def rutinas
  end

  def foro
  end

  def navegador
    @tips = Tip.all
    @recipes = Recipe.all
    @events = Event.all

  end
end
