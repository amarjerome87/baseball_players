class BaseballPlayers::Player

  attr_accessor :name, :summary

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  #define @@all
  #need initialize method
  #store player instances in @@all
  #need self.all method so the cli can access the players

end
