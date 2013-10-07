require 'httparty'
require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

FILENAME = "movies"

  get("/") do
    erb :index 
  end
  
  get("/movies/search") do 
    erb :form
  end
  
  # fetch movie data
  #  save data as csv in txt file
  #assign an id
  # redirect to movies/id 
  post("/movies") do 


    @entry= params[:movie].gsub(" ", "+")
    url = "http://www.omdbapi.com/?t=#{@entry}"

    grabbed = HTTParty.get(url)
    data = JSON(grabbed)


    @title = data["Title"]
    @year = data["Year"].to_i
    @poster = data["Poster"]


    db_conn= PG.connect(dbname: FILENAME + "_db")
    query_str = "INSERT INTO movies (title, year, poster) "
    query_str+="VALUES ('#{@title}', #{@year}, '#{@poster}');"
    db_conn.exec(query_str)
    db_conn.close



    # redirect("/movies/#{@id}")
    erb :movie_display
  end
  
  get("/movies") do 
    db_conn = PG.connect( dbname: FILENAME + "_db")
    @the_movie = db_conn.exec( "SELECT * FROM movies;")

    # the_movie.each do |row|
    #   @movie_title = "#{row['title']}"
    #   @year_released = "#{row['year']}"
    #   @poster = "#{row['poster']}"
    #   @all= @movie_title + @year_released + @poster
    # end

    db_conn.close
    erb :movie_display
  end
  
  get("/movies/:id") do 
    db_conn = PG.connect( dbname: FILENAME + "_db")
    @id = params[:id].to_i
    the_movie = db_conn.exec( "SELECT * FROM movies")

    
    the_movie.each do |row|
      @serial = "#{row['id']}"
      @movie_title = "#{row['title']}"
      @year_released = "#{row['year']}"
      @poster = "#{row['poster']}"
    end

    db_conn.close

   erb :movie_display
  end