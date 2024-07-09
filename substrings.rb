def substrings(string, dictionary)
  lower_string = string.downcase
  dictionary.reduce(Hash.new(0)) do |substring_counts, substring|
    lower_substring = substring.downcase
    substring_count = lower_string.scan(lower_substring).length
    substring_counts[substring] += substring_count if substring_count > 0
    substring_counts
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)