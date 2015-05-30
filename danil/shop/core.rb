require 'store'
require 'item'
require 'user'

#main workflow cycle here
def entry
	isStopped = false
	puts "Hello there. What's your name?"
	name = gets.chomp
	user = User.new(name)
	until(isStopped)
		puts "\n1. Create new store"
		puts "2. Create new item"
		puts "3. Add item(s) to the store"
		puts "4. See what's already in the store"
		puts "5. Delete items from the store by name \n"
		puts "Choose you action to proceed."

		
				
	end
end

private:

def workWithNewUser

end