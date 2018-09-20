def caesar_cipher(str, shift)
  strArr = str.split(//)
  solution = ""
  for i in strArr
    if i =~ /[A-Z]/
        i = (((i.ord-'A'.ord) + shift) % 26 + 'A'.ord).chr
    elsif i =~ /[a-z]/
      i = (((i.ord-'a'.ord) + shift) % 26 + 'a'.ord).chr
    end
    solution+=i
  end
  return solution
end

caesar_cipher("What a string!", 5)
