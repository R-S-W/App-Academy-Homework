class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq


  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
    @num_rounds = 8

  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
    show_sequence
    if require_sequence ==@seq && @sequence_length < @num_rounds
      round_success_message
      @sequence_length+=1
    else
      game_over_message
      @game_over = true
    end
  
    
  end

  def show_sequence
    add_random_color
    @seq.each do |co|
      puts co
      sleep(1)
      system("clear")
      sleep(0.5)
    end

  end

  def require_sequence
    puts 'Enter sequence.  (ex,  rgbyb ... ) :'
    answer= gets.chomp.downcase.split("").map! do |c|
      if c == 'r'
        "red"
      elsif c== 'b'
        'blue'
      elsif c == 'g'
        'green'
      elsif c =='y'
        'yellow'
      end
    end
    
  end

  def add_random_color
    @seq << COLORS[(0...4).to_a.sample]
  end

  def round_success_message
    p "Correct! Next Round"
    sleep(1.5)
    system('clear')
  end

  def game_over_message
    if @sequence_length < @num_rounds
      p 'You lose!'
    else
      p 'You Win!'
    end
    sleep(3)

  end

  def reset_game
    initialize
  end
end
