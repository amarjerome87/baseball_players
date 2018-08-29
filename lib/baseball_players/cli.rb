class BaseballPlayers::CLI

  def call
    list_players
    choices
  end

  def list_players
    puts "This is a list of great baseball players!"
    @players = BaseballPlayers::Player.rank
  end

  def choices
    puts "Enetr the number of the player you would like to learn more about or type list to see the player list again or exit to enter"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on choosen baseball player 1"
      when "2"
        puts "more info on choosen baseball player 2"
      when "list"
        list_players
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end


end
