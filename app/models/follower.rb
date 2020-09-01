
class Follower

  attr_accessor :age, :cults
  attr_reader :name, :life_motto

  # @@all = []

  def initialize(name, cult)
    Bloodoath.new(cult, name)
    # @@all.push(self)
  end

  # def self.all
  #   @@all
  # end

  def join_cult(cult_name)
    Bloodoath.all.each do |cult|
      binding.pry
    end
    cult_name.recruit_follower(self)
  end

  def self.of_a_certain_age(age)
    Bloodoath.all.find_all do |follower|
      # binding.pry
      follower.age >= age
    end
  end

end