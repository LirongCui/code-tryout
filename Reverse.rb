def reverse(word)
  i = 1
	result = []
	while i <= word.count
		letter = word[word.count - 1]
		result << letter
		i += 1
	end
	return result
end
