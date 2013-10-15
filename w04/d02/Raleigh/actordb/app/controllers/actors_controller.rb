class ActorsController < ApplicationController
   def index # Action
      @all_actors = Actor.all

      render :index
   end

end