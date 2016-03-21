def eratosthenes_sieve(limit)
  sq = (limit ** 0.5).to_i
  is_prime = [false, false] + [true] * (limit-1)

  2.upto(sq+1) { |i|
    if is_prime[i]
      (i*i).step(limit, i) { |j|
        is_prime[j] = false
      }
    end
  }
  res = []
  2.upto(limit) { |i|
    res.push(i) if is_prime[i]
  }
  return res
end

puts eratosthenes_sieve(20.to_i).join(' ')
