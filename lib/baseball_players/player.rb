class BaseballPlayers::Player

  attr_accessor :name, :ranking, :summary

  def self.rank
    # return players with rank with associated player

    doc = Nokogiri::HTML(open("https://www.britannica.com/list/10-greatest-baseball-players-of-all-time"))


    player_1 = self.new
    player_1.name = "Roger Clemens"
    player_1.ranking = "10"
    player_1.summary = "stuff"

    # player_2 = player.new
    # player_2.name = "x"
    # player_2.ranking = "9"
    # player_2.summary = "stuff"
    #
    # player_3 = player.new
    # player_3.name = "y"
    # player_3.ranking = "7"
    # player_3.summary = "stuff"
    #
    # player_4 = player.new
    # player_4.name = "r"
    # player_4.ranking = "6"
    # player_4.summary = "stuff"
    #
    # player_5 = player.new
    # player_5.name = "y"
    # player_5.ranking = "5"
    # player_5.summary = "stuff"
    #
    # player_6 = player.new
    # player_6.name = "i"
    # player_6.ranking = "4"
    # player_6.summary = "stuff"
    #
    # player_7 = player.new
    # player_7.name = "f"
    # player_7.ranking = "3"
    # player_7.summary = "stuff"
    #
    # player_8 = player.new
    # player_8.name = "dsf"
    # player_8.ranking = "2"
    # player_8.summary = "stuff"
    #
    # player_9 = player.new
    # player_9.name = "hjk"
    # player_9.ranking = "1"
    # player_9.summary = "stuff"

    [player_1]

  end

end
