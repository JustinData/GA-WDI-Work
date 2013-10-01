require 'sinatra'

calculator = {
	1 => {
		"add" => [1,2,3]
	}, 
	2 => {
		"subtract" => [3,2,1]
	}
}

get "/" do
	"Ello der mate! This be the calculator!"	
end

get "/calculator" do
	#show history of calculations
	#final return value for Sintra has to be String???
	result_string = ""

	calculator.each do |log_num, operation_hash|
		result_string << "#{log_num}: #{operation_hash.keys.join} #{operation_hash.values[0][0]} and #{operation_hash.values[0][1]} = #{operation_hash.values[0][2]}\n"
	end

	result_string
end

get "/calculator/:id" do
	id = params[:id].to_i
	entry = calculator[id]
	
	if entry
		"Calculation #{id}: #{entry.keys.join} #{entry.values[0][0]} and #{entry.values[0][1]} = #{entry.values[0][2]}"
	else
		"Calculation doesn't exist"
	end
end

post "/calculator" do
	last_id = calculator.keys.max
	calculator[last_id + 1] = params[:name]
end

post "/calculator/:operation/:n1/:n2" do
	operation = params[:operation] # == "add"
	n1 = params[:n1]
	n2 = params[:n2]
	calculator[last_id][:operation].push(n1, n2)

	case operation
	when 'add'
		calculator[last_id][:operation].push(n1 + n2)
	when 'subtract'
		calculator[last_id][:operation].push(n1 - n2)
	when 'multiply'
		calculator[last_id][:operation].push(n1 * n2)
	when 'divide'
		calculator[last_id][:operation].push(n1 / n2)
	end
		
end

# "/:p1/:p2"
# params[:p1]
# params[:p2]
