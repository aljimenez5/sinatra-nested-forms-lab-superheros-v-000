class Team 
  attr_accessor :name, :motto
  HEROES = []
  
  def initialize(params)
    @name = name
    @power = motto 
    HEROES << self
  end
  
  def self.all
    HEROES
  end  
  
end