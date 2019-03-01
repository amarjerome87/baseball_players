class BaseballPlayers::CLI

  def call
    BaseballPlayers::Scrapper.scrape_players
    list_players
    choices
  end

  def list_players
    puts "This is a list of great baseball players!"
    @players = BaseballPlayers::Player.all
    @players.each_with_index do |x, i|
        puts "#{i + 1}. #{x.name}"
    end
  end

  def choices
    puts "Enter the number of the player you would like to learn more about or type list to see the player list again or exit"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < @players.length
        player = @players[input.to_i - 1]
        puts player.summary
      elsif input == "list"
        list_players
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end


end
