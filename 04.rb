def cutbar(n, m)
  count = 0
  current = 1
  while n > current do
    current += current < m ? current : m
    count += 1
  end
  puts count
end

cutbar(20, 3)
cutbar(100, 5)
