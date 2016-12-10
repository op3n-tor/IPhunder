#!/usr/bin/ruby

a = 0
b = 1000

while a < b do 

$ip = "%d.%d.%d.%d" % [rand(250), rand(256), rand(256), rand(256)]
puts ("IP: #$ip")
a +=1

end

