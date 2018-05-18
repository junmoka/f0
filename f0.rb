#! /usr/bin/env ruby
if ARGV.length != 1 
  puts "arg err"
  exit
end

if !File.exist?(ARGV[0])
  puts "#{ARGV[0]} NotFound"
  exit
end

if !File.file?(ARGV[0])
  puts "#{ARGV[0]} is Directory"
  exit
end

fileName = File.basename(ARGV[0], File.extname(ARGV[0])).downcase

class F0
  
  def call(fileName)
    if respond_to?(fileName)
      send(fileName)
    else
      puts "Syntax Error"
    end
  end
  
  def fizzbuzz
    1.upto(100) do |i|
      if i % 15 == 0
        puts "FizzBuzz"
      elsif i % 3 == 0
        puts "Fizz"
      elsif i % 5 == 0 
        puts "Buzz"
      else
        puts i
      end  
    end
  end
  
  def helloworld
    puts "HelloWorld"
  end
end

f0 = F0.new()
f0.call(fileName)
