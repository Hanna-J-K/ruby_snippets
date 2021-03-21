puts "Enter your message:"
message = gets.chomp

msg_shift = 12

while msg_shift > 10
  puts "Enter shift value:"
  msg_shift = gets.chomp.to_i
  if msg_shift < 10
    puts "Encoding message..."
  else
    "Invalid shift value (has to be between 1 and 10). Try again!"
  end
end

message = message.to_s.downcase

caesar_matrix = ('a'..'z').to_a + ('0'..'9').to_a
encoded = ""
def find_positions(message, matrix, msg_shift)
  position = 0
  lposition = 0

  message.split('').each { |letter|
    lposition = message.index(letter)
    matrix.each { |char|
      if letter == char
        position = matrix.index(char)
        message[lposition] = message[lposition].tr(letter.to_s,matrix[position+msg_shift].to_s)
      end
    }
  }
  message # najwyraźniej return jest redundant
end

encoded = find_positions(message, caesar_matrix, msg_shift)
puts "Here is your encoded message using shift value of #{msg_shift}:"
puts encoded.to_s