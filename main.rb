require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:red)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'.colorize(:green)
    (gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice'
    menu
  end
end

menu

