class BaseballPlayers::CLI

  def call
    list_players
    choices
  end

  def list_players
    puts "This is a list of great baseball players!"
    @players = BaseballPlayers::Player.rank
    @players.each do |player|
      puts "#{player.name} : #{player.summary}"
    end
  end

  def choices
    puts "Enter the number of the player you would like to learn more about or type list to see the player list again or exit to enter"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @players[input.to_i - 1]
      elsif input == "list"
        list_players
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end


end
