class BaseballPlayers::CLI
  
  def call 
    puts "This is a list of great baseball players!"
    list_players 
  end 
  
  def list_players
    puts <<-DOC 1.player_name
                2.player_name
           DOC 
  end 
  
  
end 