def fibs(n)
	fibo = Array.new(n+1)
	fibo.each_index { |i| fibo[i] = i < 2 ? i : fibo[i-2] + fibo[i-1] }
end
puts fibs(11).join(' ')

def fibs_rec(n)
	return n if n < 2
	fibs_rec(n-1) + fibs_rec(n-2)
end
(0..11).each{ |i| print "#{fibs_rec(i)}" + " " }
