
#Encrypt Method
# - declares index and output
# - starts with a while loop so that we run through the whole string
# - checks to see if the letter is a z or space at index x, if so converts z to a and space is left along
# - uses the build in funtion of next to go to the next letter at index x
# - add that letter to output string 
# - adds one to index and starts all over until index is greater then string length

def encrypt(encrypt_input)
  encrypt_index = 0
  encrypt_output = ""

  while encrypt_index < encrypt_input.length
    
    if encrypt_input[encrypt_index] == "z"
      encrypt_output[encrypt_index] = "a"
    
    elsif encrypt_input[encrypt_index] ==  " "
      encrypt_output[encrypt_index] = " "
    
    else
      encrypt_output[encrypt_index] = encrypt_input[encrypt_index].next
    
    end

    encrypt_index += 1
  
  end  
  
  return encrypt_output

end

#Decrypt Method
# - declares index and output
# - starts with a while loop so that we run through the whole string
# - checks to see if the letter is an a or space at index x, if so converts a to z and space is left along
# - find the integer ordinal (ascii dec location) of the charter at index x, then add one to the integer and turn it back into a character
# - add that letter to output string 
# - adds one to index and starts all over until index is greater then string length

def decrypt(decrypt_input)
  decrypt_index = 0
  decrypt_output = ""
  
  while decrypt_index < decrypt_input.length
    if decrypt_input[decrypt_index] == "a"
      decrypt_output[decrypt_index] = "z"
    
    elsif decrypt_input[decrypt_index] ==  " "
      decrypt_output[decrypt_index] = " "
    
    else
      decrypt_output[decrypt_index] = (decrypt_input[decrypt_index].ord - 1).chr 
    
    end 
      
      decrypt_index+=1 
   
  end
  
  return decrypt_output

end


#User interface
#-Add questions for users to either encrypt or decrypt and keeps asking until the select e or d
#-Get input from users for password 
#-Add if statement based on user input to encrypt or decrypt

begin 

puts "\nWould you like to decrypt (d for decrypt) or encrypt (e for encrypt) a password?"
dec_or_enc = gets.chomp.downcase

end while dec_or_enc != "e" && dec_or_enc != "d"

puts "\nEnter Password:"
password = gets.chomp.downcase

if dec_or_enc == "e"
  puts "\nThe password encrypted comes out to #{encrypt(password)}"
else
  puts "\nThe password decrypted comes out to #{decrypt(password)}"
end

#puts encrypt("abc") 
#puts encrypt("zed") 
#puts decrypt("bcd") 
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))
#this works because it calls encrypt first to encrypt swordfish and then right after that it decrypts and so you get swordfish

