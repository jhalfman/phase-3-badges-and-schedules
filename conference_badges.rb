# Write your code here.
require 'pry'
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map do |n|
        badge_maker(n)
    end
end

def assign_rooms(array)
    array.each_with_index.map do |n, index|
        "Hello, #{n}! You'll be assigned to room #{index+1}!"
    end
end

def printer(array)
    batch_badge_creator(array).each do |n|
        binding.pry
        puts n
    end
    assign_rooms(array).each do |n|
        puts n
    end
end