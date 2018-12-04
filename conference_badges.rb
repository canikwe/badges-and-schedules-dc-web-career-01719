# Write your code here.
#require 'pry'

def badge_maker(speaker)
    "Hello, my name is #{speaker}."
end
    
def batch_badge_creator(speaker)
    speaker.collect do |name|
        badge_maker(name)
    end
end

def assign_rooms(speaker)
    speaker.map.with_index do |name, room|
        "Hello, #{name}! You'll be assigned to room #{room+1}!"
    end
end
    
def printer(speaker)
    badge = batch_badge_creator(speaker)
    rooms = assign_rooms(speaker)
#    binding.pry
    badge.each do |x|
        puts x
    end
    rooms.each do |n|
        puts n
    end
end
