class SockMerchant
  def solution(n, socks_array)
    socks_hash = Hash.new {|h,k| h[k] = 0}
    socks_array.each do |sock|
      socks_hash[sock] += 1
    end

    count = 0
    socks_hash.each_value do |value|
      count += value / 2
    end

    words = ["aa","bb","cc","bb","bb","cc"]
    result = words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    puts result

    return count
  end
end

sock_merchant = SockMerchant.new
puts sock_merchant.solution(9,[10 ,20 ,20, 10, 10, 30, 50, 10, 20])
puts sock_merchant.solution(9,[10 ,20 ,20, 10, 20])
