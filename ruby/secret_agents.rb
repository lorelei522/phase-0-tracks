puts "Would you like to decrypt or encrypt a password?"
response = gets.chomp


puts "What is your password?"
password = gets.chomp


if response == "encrypt"
  def encrypt(password)
    index = 0 
    while index < password.length
      print password[index].next
      index += 1 
    end 
  end 
  print encrypt(password)
else response == "decrypt"
  def decrypt(password)
    letter = 0
    while letter < password.length  
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    mod = password[letter]
    position = alphabet.index(mod)
    result = position - 1
    print alphabet[result]
    letter += 1
    end
  end
  print decrypt(password)
end


#decrypt(encrypt("swordfish"))
