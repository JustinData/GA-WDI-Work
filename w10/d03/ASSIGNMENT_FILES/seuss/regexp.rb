require 'pry'

def save_as( fname, contents )
  if File.exists? fname
    print "File exists, overwrite? [y/n] "
    return if gets.chomp != "y"
  end

  f = File.open fname, "w+"
  f.write contents
  f.close
end

f = File.new "seuss.txt", "r"
text = f.read
f.close

one = text.scan(/sam[^-]/i).length

two = text.gsub(/sam-i-am/i, "Sammy Jam")

three = text.scan(/in a \w+/).

four = text.gsub(/not/, "")
save_as("better.txt", bettergreeneggs)

binding.pry


