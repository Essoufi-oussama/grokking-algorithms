# take number and return an array containing that many number from fabinnachi sequence
def fib(number)
    fib = [0 ,1]
    (2..number-1).each do |i|
        fib[i] = fib[i-1] + fib[i-2]
    end
    fib
end

def fib_rec(i)
    if i == 0
        return []    
    elsif i == 1
        return[0,1]
    elsif i==2
        return [0,1]
    else
        fib_sequence = fib_rec(i - 1)
        fib_sequence << fib_sequence[-1] + fib_sequence[-2]
        return fib_sequence
    end
end

p fib(8)
p fib_rec(8)