# Write your code here.

def badge_maker(name = "Arel")
 "Hello, my name is #{name}."
end

attendees = [ ]
def batch_badge_creator(attendees)
  welcome_message = [ ]
  attendees.each do |badges|
    welcome_message.push("Hello, my name is #{badges}.")
  end
  return welcome_message
end

def assign_rooms(attendees)
  room_assignments = [ ]
  attendees.each_with_index do |attendee_name, index|
    room_assignments.push("Hello, #{attendee_name}! You'll be assigned to room #{index + 1}!".chomp)
  end
  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |one_message|
    puts "#{one_message}".chomp
  end
  assign_rooms(attendees).each do |message_|
    puts "#{message_}".chomp
  end
end