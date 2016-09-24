def sum_array(arr)
  sum = 0
  if !arr.nil? && arr.count >= 2
    arr.delete_at(arr.index(arr.min))
    arr.delete_at(arr.index(arr.max))
    arr.each do |x|
      sum+=x
    end
  end
  sum
end

=begin
def sum_array(arr)
  sum = 0
  if !arr.nil? && arr.count >= 2
    delete_list = arr.minmax
    delete_list.each do |del|
        arr.delete_at(arr.index(del))
    end
    arr.each do |x|
      sum+=x
    end
  end
  puts sum
end
=end
sum_array([6, 2, 1, 8, 10])
sum_array([-6, -20, -1, -10, -12])
sum_array([-6, 20, -1, 10, -12])
sum_array([-3, -5])
sum_array([3])
sum_array([-3])
sum_array([])
sum_array(nil)
