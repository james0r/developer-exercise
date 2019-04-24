class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.split(" ")
    newArray = []

    for item in str
      if item.length > 4 then 
        if /[[:punct:]]/.match(item[item.length - 1]) then
          newEl = /[[:upper:]]/.match(item[0]) ? 'Marklar' + item[-1] : 'marklar' + item[-1]
          newArray.push(newEl)
        else 
          newEl = /[[:upper:]]/.match(item[0]) ? 'Marklar' : 'marklar'
          newArray.push(newEl)
        end
      else
        newArray.push(item)
      end

    end

    return newArray.join(" ")
      
    # TODO: Implement this method
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a = 1
    b = 0
    fibArray = []

    while nth > 0
      temp = a
      a = a + b
      b = temp
      fibArray.push(b)
      nth = nth - 1
    end
  
    return fibArray.select { |i| i % 2 == 0 }.inject(0){|sum,x| sum + x }
    
  end
end