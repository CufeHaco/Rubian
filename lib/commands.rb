require 'sudo'
require 'irb'

$sudo = Sudo::Wrapper.new

def $usr_io::nil
end


module Rubian_cmd

	def about_rubian
		load "/home/#{`echo $USER`.chomp}/Rubian/lib/about_rubian.rb"
	end

    def bash_shell
		system "/bin/bash"
	end
	
	def cd
		print "/home/#{`echo $USER`.chomp}/" ; $usr_io = gets.chomp
		check_dir = Dir.exists?("/home/#{`echo $USER`.chomp}/#{$usr_io.chomp}") == true
		if check_dir == true
			Dir.chdir("/home/#{`echo $USER`.chomp}/#{$usr_io.chomp}")
			$usr_io = nil
		end

		if check_dir == false 
			puts "Directory doesn't exist or patch is incorrect. \n"
		end
	end

	def clear
	print `clear`
	end
	
	def cmd_info
		load "/home/#{`echo $USER`.chomp}/Rubian/lib/cmd_info.rb"
	end
	
	def quit
	    exit!
	end
	
	def find 
	 print "find "  ; puts  `find #{gets.chomp}`.yellow.chomp ; 
	end
	
	def gem_install
		$sudo.start!
		print "gem install " ; $usr_io = gets.chomp
		$sudo[Kernel].system "sudo gem install #{$usr_io}"
		$usr_io = nil
		$sudo.stop!
	end

	def install
		$sudo.start!
		print "sudo apt-get install " ; $usr_io = gets.chomp
		$sudo[Kernel].system "apt-get install #{$user_io}"
		$usr_io = nil
		$sudo.stop!
	end

	def irb
	
		 while
		  IRB.start
		  begin
		trap("INT", "DEFAULT")
		
		  IRB.irb_at_exit
		exec("clear ; ruby /home/$USER/Rubian/lib/shell")
		end
		end
		 
	end
		
	def ls
		if $sudo.running? == true
		puts	Dir.glob("*/").to_s.red.tr('/','') + Dir.glob("*.*").to_s.blue  + "\n"
		else
		puts	Dir.glob("*/").to_s.green.tr('/','') + Dir.glob("*.*").to_s.blue  + "\n"
		end
	end
	
	def nano
		if $sudo.running? == true
			$sudo[Kernel].system "nano"
		else
			Kernel.system "nano"
		end
	end
		
	def update
		$sudo.start!
		$sudo[Kernel].system "apt-get update"
		$sudo.stop!
	end
	
	def user_id
		if $sudo.running? == true
		puts	$sudo[Kernel].system"echo $USER"
		else
		puts	Kernel.system"echo $USER"
		end
	end
	
	def rubian_help
		load "/home/#{`echo $USER`.chomp}/Rubian/lib/help.rb"
	end
	
	def version
		puts "RUBIAN SHELL ALPHA 1.5".yellow
		puts "#{`ruby -v`.chomp}".green
		puts "#{Time.now}".green
	end
	
end


