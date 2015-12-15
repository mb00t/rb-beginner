# fiobonachi
# 100 354224848179261915075

fibn = []

#start for index
fibn.push 0
fibn.push 1
index = 1

while index < 100
  fibn.push fibn[index-1] + fibn[index]
  index += 1
end

puts fibn

# надо было переменную назвать fiobonachi.  запустил бесконечный цикл