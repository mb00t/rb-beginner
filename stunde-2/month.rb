#month

month = { "yanyary" => 31, "february" => 28, "march" => 31, "april" => 30,
 "may" => 31, "yune" => 30, "yuly" => 31, "august" => 31, "september" => 30,
 "oktober" => 31, "november" => 30, "december" => 31 }

month.each do |key, val|
  puts "in month #{key} #{val} day" if val == 30
  #val == 30? "in month #{key} #{val}" : x = 1
end 

# поставил лишнюю запятую, конструкция условия не пошла сразу, 
# тернарный оператор не пошел

