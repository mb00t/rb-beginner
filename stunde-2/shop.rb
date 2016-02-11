# enter products

cart = {}

puts "ввод товаров продолжается, пока не будет введено слово стоп"
flag = true

while flag
  puts "Введите название товара"
  product = gets.chomp

  break if product == "стоп"

  puts "Введите стоимость товара"
  price = gets.chomp.to_f

  puts "Введите количество товара"
  num = gets.chomp.to_f

  cart[product] = {price: price, num: num}
end

summa = 0
summa_cart = 0

cart.each do |key, value|
  summa = value[:price] * value[:num]
  summa_cart += summa
  puts "наименование #{key}, цена: #{value[:price]} ,количество: #{value[:num]}, общая сумма: #{summa}"
en

puts "Сумма покупок: #{summa_cart}"
