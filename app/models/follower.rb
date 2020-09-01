
class Follower

  attr_accessor :age, :cults
  attr_reader :name, :life_motto

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def join_cult(cult_name)
    Bloodoath.new(cult_name, self)
    cult_name.recruit_follower(self)
  end

  def self.of_a_certain_age(age)
    self.all.find_all do |follower|
      follower.age >= age
    end
  end

end