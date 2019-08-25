require 'colorize'


puts "Rubian Help file.".yellow
puts " ".yellow
puts "cmd_info: ".yellow + "list Rubian commands".green
puts " ".yellow
puts "Rubian uses Ruby syntax. ".yellow 
puts "puts 'hello world!' ".green
puts "p 'hello world!' ".green
puts 'print "hello world! \n" '.green
puts " ".yellow
puts "Rubian has built in command methods, but also uses all ruby Classes, Modules, and methods. ".yellow
puts "how to use $sudo ".yellow
puts " ".yellow
puts "$sudo.start! ".yellow + "starts sudo.  enters root when called".green
puts "$sudo".red  + "[class].method ".green
puts " example: $sudo[Kernal].system 'shutdown - h now' ".green
puts " example: $sudo[Dir].chdir('/')".green
puts "$sudo.stop! ".yellow  +  "stops sudo and returns to normal user".green
puts " ".yellow
puts "If you need to run kernal commands: ".yellow
puts "Kernel.system 'shutdown -h now ".green
puts "puts `ls -lh`.chomp ".green
puts "For system commands you can use Kernel.system , system, or backticks ` ` ".yellow
