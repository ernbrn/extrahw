# this program humors the weak human
class GameComp

  def user_feeble_input
    print "Weak human, give me your number "
    @number = gets.chomp.to_i
  end

  def computer_says_no
    @win = false
    @value = 50
    @guesses = (1..100).to_a
    i = 0
    while (i < 5) || (@win == false)
      print "My guess is #{@value} "
      if @value == @number
        @win = true
        puts "Haha I have won"
      elsif @value > @number
        puts "Oh well too high"
        guess_too_high
      elsif @value < @number
        puts "Oh well too low"
        guess_too_low
      end
      i += 1
    end
  end

  def guess_too_low
    counter = @guesses[0]
      while counter <= @value
        @guesses.delete(counter)
        counter += 1
      end
      @value = @guesses.sample
    end

  def guess_too_high
    counter = @guesses[-1]
      while counter >= @value
        @guesses.delete(counter)
        counter -= 1
      end
      @value = @guesses.sample
    end


  def play_game
    user_feeble_input
    computer_says_no
  end
end


Tron = GameComp.new
Tron.play_game
