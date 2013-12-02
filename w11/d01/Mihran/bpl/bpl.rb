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

# each(a) {|el| puts "This element" is #{el}!"}




def map(collection)
  length = collection.length
  index = 0
  new_array = []
  while index < length
    new_array.push(yield collection[index])
    index += 1
  end
  return new_array
end

map(a) {|el| 3 }