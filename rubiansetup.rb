begin
	
	
		puts "Rubian setup"
		sleep(1)
		puts "UPDATING RUBY..."
		sleep(1)
		Kernel.system "sudo apt-get install ruby-full"
		sleep(1)
		puts "INSTALLING REQUIRED GEMS"
		sleep(1)
		Kernel.system "sudo gem install colorize"
		Kernel.system "sudo gem install sudo"
		sleep(1)
		puts "PREPARING TO SET UP RUBIAN"
		sleep(1)
		require "sudo"
		sudo = Sudo::Wrapper.new
		sudo.start!
		bin_shell = sudo[File].open("/etc/shells" , "a")
		bin_shell.puts("/home/#{`echo $USER`.chomp}/Rubian/lib/shell")
		bin_shell.close
		sudo.stop!
		Kernel.system "chsh -s /home/#{`echo $USER`.chomp}/Rubian/lib/shell"
		sleep(1)
		puts "Rubian setup complete!"
		sleep(1)
		exit(0)
		
	
end
