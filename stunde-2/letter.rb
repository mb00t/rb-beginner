# letter small 
#  {"a"=>1, "e"=>5, "i"=>9, "o"=>15, "u"=>21}

hash = {}
index = 0

#letter = ["a".."z"]
#letter = ("a".."z").to_a

letter = ("a".."z")
find_leter = ["a", "e", "i", "o", "u"]

#puts letter

for symbol in letter
  index += 1
  #puts symbol
  if find_leter.include? symbol 
    hash[symbol] = index
  end
end

puts hash

# успел забыть про интервал
# как обращаться к хешу не до конца осознал
# метод include? работает только со знаком вопроса