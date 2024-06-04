def substrings(string, array_substrings)
  input_string_array = string.downcase.split

  array_substrings.reduce(Hash.new(0)) do |hash, substring|
    if input_string_array.any? {|input_string| input_string.include?(substring)}
      hash[substring] += 1
    end
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)


