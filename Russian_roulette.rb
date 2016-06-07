puts "Six chambers. One bullet. Feeling lucky?"
bullet = rand(1..6);
puts "Do you want to go first? Type 'yes' for yes."
input = gets
if input == "yes"
    puts "You're up!"
    puts "Which slot do you want to fire?"
    slot = gets
    if slot == live_bullet
        puts "Lucky...this time."
        else
        puts "BANG. Dead."
    ####