puts "Initialize authentication protocol"
25.times { print "-" }
puts ""
puts "Please enter your credentials. \nUsername:"
username = gets.chomp
puts "Password:"
password = gets.chomp

if username.downcase == "sporkupine" && password == "password1"
    puts "Credentials verified. Welcome Sporkupine."
else 
    puts "Invalid credentials. Please try again."
end