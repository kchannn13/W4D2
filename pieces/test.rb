def move(arr)
  res = []
  direction = [[-1,0],[0,-1]]
  direction.each do |dir|
    (1..7).each do |n|
      p n
      new_pos = [arr[0] + n * dir[0], arr[1] + n * dir[1]]
        if new_pos[0] > 7 || new_pos[0] < 0 || new_pos[1] > 7 || new_pos[1] < 0
          break
        end
      res << new_pos
      p res
     
    end
  end
  return res
end

p move([2,2])
        