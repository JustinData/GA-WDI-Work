plain = ('a'..'z').to_a
cipher = ["nopqrstuvwxyzabcdefghijklm"]
"nopqrstuvwxyzabcdefghijklm".chars 
cipher_array = cipher.map {|x| x.to_s.split('')} 

def encode(word)


end 

########################

def encode plaintext 
  plain = ('a'..'z').to_a
  cipher = plain.rotate(13)

  plaintext_array = plaintext.split(//)

  ciphertext_array = plaintext_array.map do |char|
    index = plain.index(char) 
    cipher[index] 
  end 

  ciphertext_array.join("")
end 






