class ThidauController < ApplicationController
  def index
    @listrooms = Room.all
    # byebug
  end
  
end
