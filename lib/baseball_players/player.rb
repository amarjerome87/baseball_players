class BaseballPlayers::Player

  attr_accessor :name, :summary

  def self.rank
    # return players with rank with associated player
    self.scrape_players

  end

  def self.scrape_players

    players = []

    doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))


    player_1 = self.new
    name = doc.css("h2").text
    summary = doc.css("p").text


    [player_1]

    players

  end

end
