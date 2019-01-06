class RepeatedString
  def solution(s, n)
    count_in_single_word = s.count('a')
    total_count = count_in_single_word * (n / s.length)
    if n % s.length != 0
      remaining_string = s[0...(n % s.length)]
      total_count += remaining_string.count('a')
    end
    return total_count
  end
end

repeated_string = RepeatedString.new
puts repeated_string.solution('jdiacikk', 899491)
