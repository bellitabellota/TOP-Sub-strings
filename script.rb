def substrings(string, array_substrings)
  input_string_array = string.downcase.split

  array_substrings.reduce(Hash.new(0)) do |hash, substring|
    input_string_array.each do |input_string| 
      if input_string.include?(substring)
        hash[substring] += 1
      end
    end
    hash
  end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)
