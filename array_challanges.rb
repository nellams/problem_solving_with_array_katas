### Working with Text
require"pry"
long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad
  minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
  commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit
  esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat
  non proident sunt in culpa qui officia deserunt mollit anim id est laborum"

string_array = long_string.split

# **Problem**: Given a sentence, find the longest word.
puts "The longest word is #{string_array.max_by {|word| word.length}}"

# **Problem**: Given a sentence, find the most common letter used.
long_string.delete!(" " + "\n")
letters = Hash.new
long_string.downcase.each_char do |char|
  if letters[char]
    letters[char] += 1
  else
  letters[char] = 0
  end
end

puts "The most frequently occurring letter is #{letters.max_by(&:last).first}"

### Decoder Ring

# **Problem**:
#
# * You're given a string of numbers 1 - 27.
#   - 1 - 26 represents the correlating letter in the alphabet
letters = Array("a".."z")
#   - 27 represents a space
letters << " "
letters.unshift(0)
# * Decode the following message with Ruby: "7 15 15 4 27 4 15 7"
message = [7, 15, 15, 4, 27, 4, 15, 7]
message.each do |code|
  print letters.at(code)
end

### Finding Primes

# **Problem**: Given a random array of numbers, return a new array containing
# only the prime numbers found in the collection.

random_numbers = []
random_prime_numbers = []

10.times do
  random_numbers << rand(10)
end

random_numbers.each do |number|
  prime = true
  (2...number).to_a.each do |div|
    if number % div == 0
      prime = false
      puts "#{number} is not prime"
      break
    end
  end
  if prime
  random_prime_numbers << number
  end
end

puts random_prime_numbers.inspect
