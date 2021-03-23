dictionary = %w[below down go going horn how howdy it i low own part partner sit] # %w syntax

def substrings (text, dictionary)
  comparison = {}
  dictionary.each do |word|

    comparison[word] = text.downcase.scan(/(?=#{word})/).size if text.downcase.include?(word) # regex with .scan
  end
  comparison
end


# exercise example
puts "Exercise example: "
puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

# user input
puts "Now enter your own string! Go ahead:"
user_string = gets.chomp
puts "Let's compare your string to the dictionary!"
puts substrings(user_string, dictionary)