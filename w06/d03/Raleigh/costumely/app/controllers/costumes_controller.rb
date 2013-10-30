class CostumesController < ApplicationController 

   def index
      @costumes = Costume.all
   end

   def new 
   end

   def create
      new_costume = Costume.new(name: params[:name], image: params[:image])
      new_costume.save

      redirect_to costume_path(new_costume)
   end



end