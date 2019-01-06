class CountingValley
  def solution(n, s)
    current_pos = 0
    number_of_valleys = 0
    s.each_char do |char|
      if char == "D"
        if current_pos == 0
          number_of_valleys += 1
        end
        current_pos -= 1
      else
        current_pos += 1
      end
    end
    return number_of_valleys
  end
end

counting_valley = CountingValley.new
puts counting_valley.solution(8, "UDDDUDUU")