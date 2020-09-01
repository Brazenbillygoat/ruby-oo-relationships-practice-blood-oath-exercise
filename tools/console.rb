require_relative '../config/environment.rb'
require_relative '../app/models/bloodoath.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/follower.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
team_rocket = Cult.new("Team Rocket", "Vermilion City", "1995", "Evil")
ashe_catchem = Cult.new("Team Pikachu", "Lavender Town", "1995", "Neutral good")
hyrum = Follower.new("Hyrum", team_rocket)
hyrum.join_cult(team_rocket)
hyrum.age = 23
amy = Follower.new("Amy", ashe_catchem)
amy.join_cult(team_rocket)
amy.age = 24
p Follower.of_a_certain_age(24)
# p Bloodoath.all
# p Cult.all
# p team_rocket.cult_population
# binding.pry
# p Cult.find_by_location("Lavender Town")

puts "Mwahahaha!" # just in case pry is buggy and exits