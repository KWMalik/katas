def chop_linear(searchMe, array)
  return -1 if array.empty?

  array.each_with_index do |number, index|
    return index  if number.eql?(searchMe)
  end
  
  return -1 
  
end


def chop_binary(searchMe, array)

  size = array.size
  mid_value = array[size/2]
  
  return -1 if array.empty?
  
  if (size == 1)
    return -1 if array[0] != searchMe
    return 0 if array[0] == searchMe
  end

  if (size == 2) 
    return 0 if array[0] == searchMe
    return 1 if array[1] == searchMe
    return -1 if !array.member?(searchMe)
  end        
  
  if (searchMe <= mid_value) 
    index = chop_binary(searchMe, array[0..(size/2)])
    index = 0 + index if index != -1
  else
    index = chop_binary(searchMe, array[(size/2 + 1)..size])
    index = index + (size/2 + 1) if index != -1
  end
  
  return index
end

#alias :chop :chop_linear
alias :chop :chop_binary