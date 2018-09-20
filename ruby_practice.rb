=begin
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
Quick Tips:

You will need to remember how to convert a string into a number.
Don’t forget to wrap from z to a.
Don’t forget to keep the same case.
=end

# def caesar_cipher(str, shift)
#   str = str.split(//)
#   solution = ""
#   for i in str
#     if i =~ /[A-Z]/
#         i = (((i.ord-'A'.ord) + shift) % 26 + 'A'.ord).chr
#     elsif i =~ /[a-z]/
#       i = (((i.ord-'a'.ord) + shift) % 26 + 'a'.ord).chr
#     end
#     solution+=i
#   end
#   puts solution
# end

# caesar_cipher("What a string!", 5)

=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
Quick Tips:

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
=end

# def stock_picker(arr)
#   # Return error response if array values are all the same.
#   if arr.empty? || (arr - [arr[0]]).empty?
#     return "There are no good days."
#   end
#   max = 0
#   for i in (0...arr.length)
#     for j in (i...arr.length)
#       if arr[j] - arr[i] > max
#         max = arr[j] - arr[i]
#         bestDays = [i, j]
#       end
#     end
#   end
#   if bestDays == nil
#     return "There are no good days."
#   end
#   return bestDays
# end

# puts stock_picker([17, 17, 17, 17, 17, 1])
# print "Stock picker 1: "
# p stock_picker([100000000,3,5,9,2,8,6,4,1])
# #1, 4, 6, 8, 2, 9, 5, 3, 15
# print "Stock picker 2: "
# p stock_picker([15,3,5,9,1,9,8,6,4,1])
# print "Stock picker 3: "
# p stock_picker([15,3,5,9,9,8,6,4,15])

=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
Next, make sure your method can handle multiple words:

  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
Quick Tips:

Recall how to turn strings into arrays and arrays into strings.
=end
def get_substrings(str)
  #str = str.split(//)
  solution = []

  # For all possible starting points for substrings
  for i in (0..str.length)
    # For all lengths that incorporate where we started...
    for len in (1..str.length-i)
      # Grab the substring starting from i, of current chosen length
      solution.push(str[i, len])
    end
  end
  return solution
end

=begin
ABC | DEF | GHI
 1     2     3
JKL | MNO | PQRS
4      5     6
TUV | WXYZ
 7     8
=end

def get_words(arr, dict)
  final = ""
  for word in arr
    wordArr = word.split(//)
    for numSet in wordArr
      for letter in (0...dict[numSet].length)
        letterArr = dict[numSet].split(//)
        print letterArr[letter], ": "
        p numSet
      end
    end
  end
  
end

dict = {"1" => "ABC", "2" => "DEF", "3" => "GHI", "4" => "JKL", "5" => "MNO",
"6" => "PQRS", "7" => "TUV", "8" => "WXYZ"}

allSubstrings = get_substrings("19002555034")
finalStrings = []
#p allSubstrings

for i in allSubstrings
  unless (i.include? "0") || (i.include? "9")
    finalStrings.push(i)
  end
end
#p finalStrings
p get_words(finalStrings, dict)
