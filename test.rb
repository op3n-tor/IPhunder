#!/usr/bin/ruby
require 'socket'
require 'resolv'
require 'optparse'


def banner()
red	= "\033[01;31m"
green = "\033[01;32m"
default = "\033[0m"
puts ("\n")
puts("██╗██████╗     ██╗  ██╗██╗   ██╗███╗   ██╗██████╗ ███████╗██████╗  ")
puts("██║██╔══██╗    ██║  ██║██║   ██║████╗  ██║██╔══██╗██╔════╝██╔══██╗ ")
puts("██║██████╔╝    ███████║██║   ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝ ")
puts("██║██╔═══╝     ██╔══██║██║   ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗ ")
puts("██║██║         ██║  ██║╚██████╔╝██║ ╚████║██████╔╝███████╗██║  ██║ ")
puts("╚═╝╚═╝         ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝ ")
puts ("\n")
puts "#{green}[!] Legal disclaimer #{red }Developers assume no liability and are not responsible
for any misuse or damage caused by this program"

puts "#{default}Author: Mateus Alves a.k.a Alves"
puts "#{default}E-mail: 0daycode at protonmail.com"
puts ("\n")                                                                  
     
end

options = {:generetor=> nil}
parser = OptionParser.new do|opts|
   
    opts.banner = "Exemple: ruby iphunder.rb -g 10 or --generetor 100 "
    opts.on('-g ','--gem ', String)do |generetor|
    options[:generetor]=generetor;
    end
	banner()
	opts.on('-h', '--help', 'Help') do
       
        puts opts
        exit
    end
end
 
parser.parse!
 


#Var Colors:

red	= "\033[01;31m"
green = "\033[01;32m"
default = "\033[0m"
banner()
a = 0
b = 25

while a < b do 

$ip = "%d.%d.%d.%d" % [rand(250), rand(256), rand(256), rand(256)]
puts ("IP Random: #{green} [+] #$ip")
host_name = Resolv.getnames($ip)
if host_name == nil
    puts "#{red}Nothing "
    exit
else
puts "DNS of IP: #{red} [+]  #{host_name}"

end
a +=1

end
