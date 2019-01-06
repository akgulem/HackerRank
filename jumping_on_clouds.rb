class JumpingOnClouds
  def solution(clouds)
    i = 0
    jump_count = 0
    while true
      if i + 2 <= clouds.length - 1
        if clouds[i+2] == 0
          i = i + 2
          jump_count += 1
        elsif clouds[i+1] == 0
          i = i + 1
          jump_count += 1
        else
          break
        end
      elsif i + 1 <= clouds.length - 1
        if clouds[i+1] == 0
          i = i + 1
          jump_count += 1
        end
      else
        break
      end
    end
    return jump_count
  end
end
jumping_on_clouds = JumpingOnClouds.new
puts jumping_on_clouds.solution([0 ,0, 0, 1, 0, 0])