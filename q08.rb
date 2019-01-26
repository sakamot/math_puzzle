N = 12

def move(current)
  return 1 if current.size > N
  count = 0
  # 前後、左右、１マスずつ移動するための配列をループ
  [[0, 1], [0, -1], [1, 0], [-1, 0]].each do |d|
    # currentの一番最後が、現在のマス
    next_pos = [current.last[0] + d[0], current.last[1] + d[1]]
    # currentに含まれていない場合は、さらにマスを進める
    unless current.include?(next_pos)
      count += move(current + [next_pos])
    end
  end
  count
end

p move([[0,0]])
