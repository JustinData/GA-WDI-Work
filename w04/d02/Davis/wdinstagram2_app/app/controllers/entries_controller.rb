class EntriesController < ApplicationController
	def index
		@entries = Entry.all

		# explicit rendering
		render :index
	end

	def new
		render :new
	end

	def create
		
		# just created entry
		redirect("/entries/show")
	end

	def show
		
	end
end