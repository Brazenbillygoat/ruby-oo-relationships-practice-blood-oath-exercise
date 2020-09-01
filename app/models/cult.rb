
class Cult

  attr_accessor :name, :location, :founding_year, :follower
  attr_reader :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @follower = []
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    self.follower.push(follower)
  end

  def cult_population
    self.follower.count
  end

  def self.find_by_name(cult_name)
    self.all.find { |cult| cult.name == cult_name }
  end

  def self.find_by_location(cult_location)
    self.all.find { |cult| cult.location == cult_location }
  end

  def self.find_by_founding_year(year)
    self.all.find { |cult| cult.founding_year == year }
  end

end