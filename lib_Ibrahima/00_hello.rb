def say_hello (first_name)
	puts "Bonjour, #{first_name} !"
end

def ask_first_name
	puts "quel est votre prénom"
	print ">"
	first_name = gets.chomp
	return first_name
end

def perform
name = ask_first_name
say_hello(name)
end

perform


