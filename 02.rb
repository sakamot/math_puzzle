op = ['+', '-', '*', '/', '']
1000.upto(9999) do |i|
  c = i.to_s
  op.each do |j|
    op.each do |k|
      op.each do |l|
        val = c[3] + j + c[2] + k + c[1] + l + c[0]
        begin
          if (val.length > 4) && (i == eval(val))
            puts val + '=' + i.to_s
          end
        rescue
        end
      end
    end
  end
end
