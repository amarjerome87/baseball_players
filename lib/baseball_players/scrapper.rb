class BaseballPlayers::Scrapper




def self.scrape_players

  doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))
  list_doc = doc.css("ul.md-mendel-list.md-list-order-reverse") #container ul
  players = list_doc.css("li")
  players.collect.with_index do|li,i|
    player = BaseballPlayers::Player.new
    player.name = doc.css("h2")[i].text.scan(/[A-Z][a-z]+/)
    player.name = player.name.join(" ")
    player.summary = doc.css("p")[i].text
    player
  end
end
end
