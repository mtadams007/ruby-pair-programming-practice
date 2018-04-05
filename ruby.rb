# arr = [1,2,3,"a word"]
# arr[0]
# arr.push(crap)
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

# def transmogrifier(num1, num2, num3)
#   result = (num1 + num2) * num3
#   puts result
# end
#
# transmogrifier(10,20,5)

def introduce(str1,str2)
  puts "#{str1}, meet #{str2}"
end

introduce("Mike", "Jamie")

def shout(str)
  puts str.upcase
end

shout("howdy partner")

def chopped(arr)
  arr.pop
  p arr
end
chopped([1,2,23,3])

def how_big(str)
  if str.length < 3
    puts "SMALL"
  elsif str.length <= 5
    puts "Medium"
  else
    puts "big"
  end
end

how_big("It")

def weatherman(condition, temp)
  if condition == "rainy" && temp == "cold"
    puts "Better stay inside!!!"
  elsif condition == "rainy" && temp == "hot"
    puts "sounds like a gross combo"
  elsif condition == "sunny"  && temp == "hot"
    puts "go swimmmm"
  elsif condition == "windy" && temp == "cold"
    puts "bundle up sooon!"
  elsif condition == "windy" && temp == "hot"
    puts "tornado warning!"
  else
    puts "what strange weather we're having"
  end
  weatherman("rainy","hot")
  
