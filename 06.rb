count = 0
2.step(10_000 ,2).each do |n|
  no = n * 3 + 1
  loop do
    no = (no.even? ? (no / 2) : (no * 3 + 1))
    break if no == n || no == 1
  end
  count += 1 if no == n
end

p count
