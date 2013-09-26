student_array = ["Nichol Alexander","Aby Bandoh","Tom Brennan","Ernie Casilla","David Fox-Powell","Raleigh Froeber","Tea Ho","Paris Hyun","Justin Kemmerer","Davis Koh","Julie Lappano","Sal Lardizzone","Britt Lewis","Maria Mercedes Martinez","Abrahamian Mihran","Ann Millspaugh","Erica Obersi ","Marco Pretell-Vázquez","Bradley Puder","McKenneth Scott III","Russell Taff","Arun Umapathy","Kevin Ventura"]
#only use rand_student if you're gonna use rand_student again
puts rand_student = student_array.sample(1)
# can also put prints stuedent_array.count or student_array.length, don't necessarily need to 
puts numb_student = student_array.count
puts "The number of students in the clsss is #{numb_student}"
puts student_array.index("Sal Lardizzone")
puts fifth_student = student_array[4]
#the below shows you how to 
print student_array.join(" | ")