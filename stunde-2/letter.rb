# letter small 
#  {"a"=>1, "e"=>5, "i"=>9, "o"=>15, "u"=>21}

hash = {}
letter = ("a".."z")
find_leter = ["a", "e", "i", "o", "u"]

letter.each_with_index do |symbol, index| 
  hash[symbol] = index + 1 if find_leter.include? symbol
end

puts hash

# успел забыть про интервал
# как обращаться к хешу не до конца осознал
# метод include? работает только со знаком вопроса