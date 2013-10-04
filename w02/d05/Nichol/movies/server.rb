require "sinatra"
require "sinatra/reloader"

require "pry"

require "httparty"
require "json"

require "erb"

all_films = Array.new

def open_and_read_data(film_array)
	my_file = File.new("movies.txt", 'r')
	
	my_file.each do |x|
		my_array = x.split(",")
		film_array << {:title => my_array[0], :year => my_array[1], :poster => my_array[2]}
	end
  
    return film_array
end

def write_data(film_hash)
    my_file = File.new("movies.txt", 'a+')
    film_string = "\n#{film_hash[:title]},#{film_hash[:year]},#{film_hash[:poster]}"

    my_file << film_string
    my_file.close


end


all_films = open_and_read_data(all_films)

# class MovieStore
#   def push(movie_array)
#   end

#   def find(id)
#   end
# end

# movie_store = MovieStore.new

get "/" do
	display = erb :index
	display += erb :form
	erb display
end

get "/movies/?" do

	@display_html = String.new
	@display_hash = Hash.new
	
	all_films.each do |my_hash|
		@display_hash = my_hash
		@display_html += erb :movie
	end

	@display_html
end

get "/movies/:movie_index" do 

	movie_index = params[:movie_index].to_i
	
    if movie_index < all_films.length
       @display_hash = all_films[movie_index]
	   erb :movie
    else
        erb :error
    end

end


get "/search_movie" do
	name = params[:movie_title]
	name = name.gsub(" ", "+")

	url = "http://www.omdbapi.com/?t=#{name}"

	response = HTTParty.get(url)
	parsed = JSON(response)

	film_title = parsed["Title"]
	film_date = parsed["Year"]
	film_poster = parsed["Poster"]

	all_films << {:title => film_title, :year => film_date, :poster => film_poster}

    #write data to file here
    write_data({:title => film_title, :year => film_date, :poster => film_poster})

	@display_hash = all_films.last
	erb :movie
end

get "/random/?" do

    @display_hash = all_films.sample
    erb :movie
end


get "/error/?" do

    erb :error
end







# name = "the lion king".gsum(" ", "+")
# url = "http://www.omdbapi.com/?t=#{name}"

# response = HTTParty.get("url")
# parsed = json(response)


