def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
i_love_food = []
counter = 0 
while counter < src.length do
    i_love_food.push "I love #{src[counter][0]} and #{src[counter][1]} on my pizza"
    counter += 1
end 
i_love_food
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  greater_pair = []
  counter = 0
  while counter < src.length
  greater_pair.push (src[counter].max)
  counter += 1 
end
greater_pair
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  counter = 0 
while counter < src.count do
  if ((src[counter][0] % 2 == 0)) and (src[counter][1] % 2 ==0)
    total += src[counter][0] + src [counter][1]
  counter += 1
end
total
