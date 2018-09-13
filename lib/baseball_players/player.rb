class BaseballPlayers::Player

  attr_accessor :name, :summary

  def self.rank
    # return players with rank with associated player
    self.scrape_players

  end

  def self.scrape_players

    doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))
    list_doc = doc.css("ul") #container ul
    binding.pry
    list_doc.collect.with_index do|li,i|
      binding.pry
      player = self.new
      player.name = doc.css("h2")[i].text.scan(/[A-Z][a-z]+/)
      player.summary = doc.css("p").text
      player
    end
  end

end
