class Questions

  attr_accessor :correct

  def initialize(current_player)
    @number_1 = rand(20)
    @number_2 = rand(20)
    @answer = @number_1 + @number_2
    puts "#{current_player}: What does #{@number_1} plus #{@number_2} equal?"
    ask_question
  end

  def ask_question
    @player_answer = gets.chomp
    if @player_answer == @answer.to_s
      puts "Yes! You are correct!"
      @correct = true
    else
      puts "Seriously? No."
      @correct = false
    end
  end
end
