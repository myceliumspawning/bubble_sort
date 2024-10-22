puts "Enter the first number you want to sort:"
array = []
array << gets.chomp.to_i
while array.last != "y".to_i
  puts "Enter y if you\'re done and the next number if you're not!"
  array << gets.chomp.to_i
end
array.pop

puts "This is the array to sort: " + array.to_s

def bubble_sort(array)
  for i in (0..array.length-1)
    is_sorted = true
    for j in (0...array.length-i-1)
      if array[j] > array[j+1]
      array[j],array[j+1] = array[j+1],array[j]
      is_sorted = false
      end
    end
    if is_sorted == true
      break
    end
  end
  puts "Your sorted array is as follows: " + array.to_s
  array
end

