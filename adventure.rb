
    puts "This is it...bottom of the 9th. Bases loaded. You're pitching and winning 3-2. \n"
    game = "on"
    strikes = 0
    balls = 0
    while game == "on"
    game = "on"
    if balls == 4
      puts "Walk! You leave the game on a tie."
      game = "over"
      break
    end
    if strikes == 3
      puts "Strikeout! You win! The crowd goes wild!!!!"
      game = "over"
            break
    end
    puts "The count is #{balls} - #{strikes}"
    puts "What pitch do you want to throw: Fastball or Curveball?"
    pitch = gets.chomp.strip.downcase
    while pitch != 'fastball' && pitch != 'curveball'
        puts "You don't know how to throw that pitch. \n
        What pitch do you want to throw: Fastball or Curveball?"
        pitch = gets.chomp.strip.downcase
    end
    puts "Do you want to throw it for a strike or ball?"
    location = gets.chomp.strip.downcase
    while location != 'strike' && location != 'ball'
        puts "Sorry, you can't throw it there.. \n
        Do you want to throw it for a strike or ball?"
        location = gets.chomp.strip.downcase
    end
    rpitch = rand(100)
    if pitch == 'fastball' && location == 'strike'
      if rpitch < 16
        puts "Ball!"
        balls = balls +1
      elsif rpitch < 38
        puts "Single! You lose!"
        game = "over"
      elsif rpitch <99
        puts "Strike!"
        strikes = strikes +1
      elsif rpitch == 100
        puts "Wild Pitch! You leave the game on a tie."
        game = "over"
      end
    end


      if pitch == 'fastball' && location == 'ball'
        if rpitch < 64
          puts "Ball!"
          balls = balls +1
        elsif rpitch < 73
          puts "Single! You lose!"
          game = "over"
        elsif rpitch <99
          puts "Strike!"
          strikes = strikes +1
        elsif rpitch < 101
          puts "Wild Pitch! You leave the game on a tie."
          game = "over"
        end
end

    if pitch == 'curveball' && location == 'strike'
      if rpitch < 45
        puts "Ball!"
        balls = balls +1
      elsif rpitch < 58
        puts "Single! You lose!"
        game = "over"
      elsif rpitch <98
        puts "Strike!"
        strikes = strikes +1
      elsif rpitch < 101
        puts "Wild Pitch! You leave the game on a tie."
        game = "over"
      end
end

  if pitch == 'curveball' && location == 'ball'
    if rpitch < 70
      puts "Ball!"
      balls = balls +1
    elsif rpitch < 75
      puts "Single! You lose!"
      game = "over"
    elsif rpitch <96
      puts "Strike!"
      strikes = strikes +1
    elsif rpitch < 101
      puts "Wild Pitch! You leave the game on a tie."
      game = "over"
    end
end
end
