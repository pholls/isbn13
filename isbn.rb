def isbn(input)
  # transform input to handle both string and int inputs
  split_array = input.to_i.digits.reverse
  summed_figure = split_array.each_with_index.inject(0) do |sum, (n, index)|
    sum + n * ((index % 2 == 0) ? 1 : 3)
  end
  check_digit = (10 - (summed_figure % 10)) % 10
  return "#{input}#{check_digit}"
end

# expect "9780060525590"
raise StandardError.new("978006052559 did not match 9780060525590") unless isbn("978006052559") === "9780060525590"

# expect "9780060525651"
raise StandardError.new("978006052565 did not match 9780060525651") unless isbn("978006052565") === "9780060525651"

# expect "9780060892012"
raise StandardError.new("978006089201 did not match 9780060892012") unless isbn("978006089201") === "9780060892012"

# expect "9780060525613"
raise StandardError.new("978006052561 did not match 9780060525613") unless isbn("978006052561") === "9780060525613"

# expect "9780143007234"
raise StandardError.new("978014300723 did not match 9780143007234") unless isbn("978014300723") === "9780143007234"
raise StandardError.new("978014300723 did not match 9780143007234") unless isbn(978014300723) === "9780143007234"

# expect "9780060827625"
raise StandardError.new("978006082762 did not match 9780060827625") unless isbn("978006082762") === "9780060827625"

# expect "9780061131646"
raise StandardError.new("978006113164 did not match 9780061131646") unless isbn("978006113164") === "9780061131646"

# expect "9780060525637"
raise StandardError.new("978006052563 did not match 9780060525637") unless isbn("978006052563") === "9780060525637"

# expect "9780060000028"
raise StandardError.new("978006000002 did not match 9780060000028") unless isbn(978006000002) === "9780060000028"

# expect "9781861978769"
raise StandardError.new("978186197876 did not match 9781861978769") unless isbn(978186197876) === "9781861978769"

puts "All tests passed!"