require "sinatra"

get 'calculator/add/:int1/:int2' do
  puts "#{params[:int1].to_i + params[:int2].to_i}"
end