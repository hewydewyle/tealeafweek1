#hieu le's calculator 



def print(line)
  puts "#{line}"
end

print "Enter your first number."

num1 = gets.chomp

print "Enter your second number."

num2 = gets.chomp

print "1) add  2) subtract  3) multiply 4) divide"

math = gets.chomp

if math == '1'
  result = num1.to_i + num2.to_i
elsif math == '2'
  result = num1.to_i - num2.to_i
elsif math == '3'
  result = num1.to_i * num2.to_i
else math == '4'
  result = num1.to_f / num2.to_f
end

print "Result is #{result}"


