class SongsController < ApplicationController

  def index
    @show = Show.find(params[:show_id])
    @songs = Song.where(show_id: params[:show_id])
    render :index
  end

  def new
    render :new
  end

  def create

    whitelisted = params.require(:song).permit([:song_title, :embed_url, :show_id])
    song = Song.new(whitelisted)
    song.save

    redirect_to "/song/#{song.id}"
  end

  # def create
  #       student = Student.new(name: params[:name], project_description: params[:project_description], github_link: params[:github_link])
  #   student.save
  #   redirect_to "/students"
  # end

  def show
    @single_song  = Song.where(show_id: params[:show_id], id: params[:song_id])
    render :show
  end

end