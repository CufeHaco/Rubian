require_relative "./Rubian/version.rb"
require 'colorize'

module RUBIAN
  class Error < StandardError; end
    
  begin
puts "RUBIAN SHELL ALPHA VERSION 1.5".yellow
puts "#{`ruby -v`.chomp}".green
puts "#{Time.now}".green


end

end

