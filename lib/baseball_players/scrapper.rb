class BaseballPlayers::Scrapper




def self.scrape_players

  doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))
  list_doc = doc.css("ul.md-mendel-list.md-list-order-reverse") #container ul
  players = list_doc.css("li")
  list_doc.collect.with_index do|li,i|
    players = BaseballPlayers::Player.new(player, name, summary)
    players.name = doc.css("h2")[i].text.scan(/[A-Z][a-z]+/)
    players.name = player.name.join(" ")
    players.summary = doc.css("p")[i].text
    players
  end
end
end
