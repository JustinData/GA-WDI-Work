require 'pry'

def print_file( file_name )
  begin
    file_path = file_name + ".txt"
    f = File.new(file_path, "r")

    while line = f.readline
      puts line
    end

<<<<<<< HEAD
    f.close
  rescue
    puts "--fin--"
  ensure
    f.close
=======
  rescue EOFError => error
    #binding.pry
    puts "---Fin---"
  rescue Errno::ENOENT => error
    puts "File does not exist..."
  rescue
    puts "Error: failed."
  ensure
    f.close if !f.nil?
>>>>>>> 8565c6ec0094a7eba7e52b1ea416f57a16733a24
  end
end


print "Enter the file name: "
file_name = gets.chomp

print_file file_name