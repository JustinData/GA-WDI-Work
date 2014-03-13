a = *100..110

def each(collection)
	length = collection.length
	index = 0 
	while index < length
		yield collection[index]
		index += 1
	end
	return collection
end

# each(a) {|el| puts "this element is #{el}!"}


def map(collection)
	length = collection.length
	index = 0 
	output_collection = []
	while index < length
		output_collection << yield(collection[index])
		index += 1
	end
	return output_collection
end

# map(a) {|el| 2*el}


def select(collection)
	length = collection.length
	index = 0 
	output_collection = []
	while index < length
		if yield(collection[index])
			output_collection << collection[index]
		end
		index += 1
	end
	return output_collection
end

# select(a) {|el| el % 2 == 0}


def reduce( arr, intial )
	result = initial
	i = 0

	while i < arr.length
		result = yield( result, arr[i] )
		i += 1
	end
	return result
end

# reduce(a,0) {|sum,n| sum + n}

def join(collection, delimiter)
  reduce(collection, ""){|e, o| o.to_s + delimiter + e.to_s}
end