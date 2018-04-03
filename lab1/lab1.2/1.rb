
def avg(array)

  array = array.map { |x| x.to_f }


  divPoint = array.max_by { |i| array.count(i) }

  print array, "\n"

  print "max: " + divPoint.to_s, "\n"

  sum = 0
  counter = 0

  out_arr = [];

  array.each do |item|
    # puts item
    if item == divPoint
      if counter == 0
        out_arr.push(item.to_f)
      else
        out_arr.push(sum/counter)
      end
      sum = 0
      counter = 0

    else
        sum += item.to_f
        counter += 1

    end
  end

  return out_arr
end

print  avg([1,2,3,4,5,6,7]), "\n"








