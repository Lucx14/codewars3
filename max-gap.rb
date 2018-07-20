def max_gap(numbers)

  arr = numbers.sort.reverse

  p arr[0..(arr.length - 2)].each_index.map{ |i| arr[i] - arr[i+1] }.max




end



max_gap([13,10,2,9,5])        #,4)
max_gap([13,3,5])        #,8)
max_gap([24,299,131,14,26,25])        #,168)
max_gap([-3,-27,-4,-2])        #,23)
