def bubble_sort(array)
  (0...array.length).each do |i|
    (0...(array.length - i - 1)).each do |index|
      if array[index].to_i > array[index+1].to_i
        pom = array[index + 1].to_i
        array[index + 1] = array[index].to_i
        array[index] = pom
      end
    end
    puts "Pass #{i}, sorting array... #{array}"
  end
  puts "--------------"
  puts "Sorted array: #{array} :)"
end

array = [4,3,78,2,0,2]
puts "Unsorted array: #{array}"
puts "--------------"
bubble_sort(array)

