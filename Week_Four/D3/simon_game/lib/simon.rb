class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
  
  def play
    take_turn until game_over
    if game_over
      game_over_message
      reset_game
    end
  end
  
  def add_random_color
    @seq << COLORS.sample
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    p add_random_color
  end

  def require_sequence
    user_attempt = gets.chomp
    user_seq = user_attempt.split(" ")
    @game_over = true if user_seq != @seq
  end

  def round_success_message
    puts "Correct!"
  end

  def game_over_message
    puts "Oh no! You suck!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

play_simon = Simon.new
play_simon.play