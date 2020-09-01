
class Bloodoath

  attr_reader :cult, :follower, :initiation

  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @initiation = Time.now.strftime("%Y/%m/%d")
    @@all.push(self)
  end

  def self.all
    @@all
  end

end