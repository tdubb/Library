def fib(n)
	puts if x <= 2 ? x : fib(x-1) + fib(x-2)
end

fibs = [0,1]
fibs << (fibs[-1]+fibs[-2])
puts fibs 
answer = fibs.inject(0) {|result, num| num+result puts num.even? ?  : num}


