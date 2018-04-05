# arr = [1,2,3,"a word"]
# arr[0]
# arr.push(stuff)
# arr.delete_at(1) or arr.delete(2)
# arr[arr.index(3)] = 'whatev'
# arr[3] = "watev"
# my_hash = {
#   dog: "poodle",
#   cat: "tabby"
# }
# doggy = my_hash[:dog]
# puts doggy
#
# my_hash[:parrot] = "scarlet macaw"
# puts my_hash
#
# my_hash.delete(:dog)
# puts my_hash
# my_hash[:cat] = " tiger"
# puts my_hash
#
# i = 1
# while i<11 do
#   puts i
#   i+=1
# end
#
# puts [*1..10]
#
# arr.each do |element|
#   puts element
# end
# num = 1.0
# if num > 1
#   puts  "what a big number!!!!!"
# elsif num < 1
#   puts "what a smaaaahlll numba"
# else
#   puts "we are number  1 !!!!"
# end
#
# def murica(str)
#   puts "#{str}... Only in America!"
# end
# def murica(str)
#   puts str + "... Only in America!"
# end
#
# murica("Fried oreos")
#
# def maxValue(arr)
#   big = nil
#   arr.each do |elem|
#     if big == nil || elem > big
#       big = elem
#     end
#   end
#   puts big
# end
#
# maxValue([1,2,3,4,2])
# hashy = {}
# def conversion(arr1, arr2)
#   hashy = {}
#   i = 0
#   until i == arr1.length do
#     hashy[arr1[i]]=arr2[i]
#     i+=1
#   end
#   puts hashy
# end
#
# conversion([:a,:b,:c], [1,2,3])
#
# def guessgame()
#   number = 1 + rand(10)
#   i = 0
#   input = 11
#   while input != number do
#     puts "guess a numbah!"
#     input = gets.chomp.to_i
#     i += 1
#   end
#   puts "congratulations!!!,   It took you #{i} guesses"
# end
# guessgame()
#
# def transmogrifier(num1, num2, num3)
#   result = (num1 + num2) * num3
#   puts result
# end
#
# transmogrifier(10,20,5)
#
# def introduce(str1,str2)
#   puts "#{str1}, meet #{str2}"
# end
#
# introduce("Mike", "Jamie")
#
# def shout(str)
#   puts str.upcase
# end
#
# shout("howdy partner")
#
# def chopped(arr)
#   arr.pop
#   p arr
# end
# chopped([1,2,23,3])
#
# def how_big(str)
#   if str.length < 3
#     puts "SMALL"
#   elsif str.length <= 5
#     puts "Medium"
#   else
#     puts "big"
#   end
# end
#
# how_big("It")
#
# def weatherman(condition, temp)
#   if condition == "rainy" && temp == "cold"
#     puts "Better stay inside!!!"
#   elsif condition == "rainy" && temp == "hot"
#     puts "sounds like a gross combo"
#   elsif condition == "sunny"  && temp == "hot"
#     puts "go swimmmm"
#   elsif condition == "windy" && temp == "cold"
#     puts "bundle up sooon!"
#   elsif condition == "windy" && temp == "hot"
#     puts "tornado warning!"
#   else
#     puts "what strange weather we're having"
#   end
# end
# weatherman("rainy","hot")
#
# def meaning_of_life()
#   puts "Do you want to know the meaning of life?! For yes enter y, for no enter n."
#   input = gets.chomp
#   if input == "y"
#     p 42
#   else
#     puts "You suck. :("
#   end
# end
#
# meaning_of_life()
#
# def string_info(str)
#   my_str = {
#   original: str,
#   length: str.length,
#   snaked: str.downcase.tr!(' ', '_')
# }
# p my_str
# end
#
# string_info("Hi guys, you are the best")
#
# def mult_five?(num)
#   if num%5 == 0
#     p true
#   else
#     p false
#   end
# end
#
# input =''
# while input != "quit"
#   puts "Enter a number or type quit por favor"
#   input = gets.chomp
#   input1 = input.to_i
#   if input == "quit"
#     puts "sorry to see you go"
#   elsif mult_five?(input1) == true
#     puts "Your number is divisible by 5!!!!!!"
#   else
#     puts "Your number is not divisible by 5. :("
#   end
# end
#
# def add(num1, num2)
#   p num1  + num2
# end
#
# def subtract(num1,num2)
#   p num1 - num2
# end
#  def mult(num1,num2)
#    p num1 * num2
#  end
#
#  def divide(num1,num2)
#    p num1 / num2
#  end
#
#  puts "what do you want to do???"
#  op = gets.chomp
#  puts "give me a number!"
#  number1 = gets.chomp.to_i
#  puts "give me another number"
#  number2 = gets.chomp.to_i
#
#  if op == "add"
#    add(number1,number2)
#  elsif op == "subtract"
#    subtract(number1,number2)
#  elsif op == "mult"
#    mult(number1,number2)
#  else
#    divide(number1,number2)
#  end


def computer_picks_num()
  puts "enter a positive number"
  num = gets.chomp.to_i
  random_number = 1 + rand(num)
  return random_number
end

def player_guess()
  puts "guess a number!"
  guess = gets.chomp.to_i
  return guess
end

def evaluate_guess(rando)
  answer = false
  i = 0
  while answer == false
    guess = player_guess()
    warmSmall=rando*0.1
    if guess == rando
      i += 1
      answer = true
      puts "Right answer! It took you #{i} guesses"
    elsif guess < rando && rando - guess <= warmSmall
      i+=1
      puts "Higherrrr!!! But you're warm!"
    elsif guess < rando
      i+=1
      puts "Higherrrr!!!"
    elsif guess > rando && guess - rando <= warmSmall
      i+=1
      puts "lower But you're warm!"
    elsif guess > rando
      i+=1
      puts "lower"
    end
  end
end

evaluate_guess(computer_picks_num())
