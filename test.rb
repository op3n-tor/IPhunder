#!/usr/bin/ruby

a = 0
b = 1000

while a < b do 

 ip = "%d.%d.%d.%d" % [rand(256), rand(256), rand(256), rand(256)]
puts ip
a +=1

end

