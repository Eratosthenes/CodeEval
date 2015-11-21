#!/usr/bin/env ruby

def say_hello(name)
    puts "Hey there, #{name}!"
end

#when you write ./script.rb,
#your computer will likely go through all of your files and find the one where
#the program name (./script.rb) matches this file's name
if $PROGRAM_NAME == __FILE__
    puts "Enter your name: "
    name = gets.chomp
    say_hello(name)
end
