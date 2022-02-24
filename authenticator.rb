users = [
    { username: "sporkupine", password: "password1" },
    { username: "derekjeter", password: "password2" },
    { username: "timmyturner", password: "password3" },
    { username: "the_dude", password: "abides" }
]

def auth_user(username, password, user_list)
    user_list.each do |user|
        if user[:username] == username && user[:password] == password
            return "Credentials verified. Welcome, #{user[:username]}"
        end
     end
     return "Invalid credentials. Please try again."
end

puts "Initialize authentication protocol"
25.times { print "-" }
print "\n"
puts "Please enter your credentials."

count = 1

while count < 4 do
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    auth = auth_user(username, password, users)
    puts auth
    count += 1
end
puts "You have exceeded the maximum number of failed validation attempts. \nGoodbye." if count == 4
