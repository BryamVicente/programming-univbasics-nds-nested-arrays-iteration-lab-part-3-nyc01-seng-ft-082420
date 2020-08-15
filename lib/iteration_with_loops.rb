def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it

  # count = 0
  #   solution_answer = []
  #   sorted_array = []
  #   src.each do |little_array|
  #     sorted_array << little_array.sort
  #   end
  words = []
  sorted_array = []
  count = 0
  src.each do |items|
    items.each do |item|
      if item.is_a?(String)
        words << item
      end
    end
  end

    while count < sorted_array.count do
    inner_count = 0
    minimum_amount = ""
    while inner_count < sorted_array.count do
      if sorted_array[count][inner_count] < minimum_amount
        minimum_amount = sorted_array[count][inner_count]
        # inner_count += 1
      end
      inner_count += 1
      # count += 1
    end
    words << minimum_amount
    count += 1
    end
  words
  end
