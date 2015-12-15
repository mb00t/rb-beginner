#push array

a = []
flag = 10
i = 0

while flag < 101
  a.push flag
  puts a[i]
  i += 1
  flag += 5
end

# сделал ошибку инкркмента i += i, while с условием как то некрасиво 
# более правильно сделать без индекса и вывести целиком