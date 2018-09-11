class BaseballPlayers::Player

  attr_accessor :name, :ranking, :summary

  def self.rank
    # return players with rank with associated player
    self.scrape_players

  end

    # doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))
  def self.scrape_players

    players = []



    player_1 = self.new
    player_1.name = "Roger Clemens"
    player_1.ranking = "10"
    player_1.summary = "stuff"


    [player_1]

    deals 

  end

end
