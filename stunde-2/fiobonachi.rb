# fiobonachi
# 100 354224848179261915075

fibn = [0, 1]
index = 1

while index < 100
  fibn << fibn[index-1] + fibn[index]
  index += 1
end

puts fibn

# надо было переменную назвать fiobonachi.  запустил бесконечный цикл