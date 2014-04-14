subway_lines = {
	"N" => ["TS", "34th", "28th-n", "23rd-n", "US", "8th-n"],
	"L" => ["8th-l", "6th", "US", "3rd", "1st"],
	"Six" => ["GC", "33rd", "28th-six", "23rd-six", "US", "AP"]
}

puts "**** MTA ****"
puts "What train do you want to get on: " + subway_lines.keys.join(', ') + "?"
train1 = gets.chomp
puts "Which stop: " + subway_lines[train1].join(', ') + "?"
stop1 = gets.chomp

puts "What train do want to get off: " + subway_lines.keys.join(', ') + "?"
train2 = gets.chomp
puts "which stop: " + subway_lines[train2].join(', ') + "?"
stop2 = gets.chomp

#locate which key stop1 is a value of
#locate the index in the array stop1 is
	#subway_lines[train1].index(stop1)
#count how far stop1's index is from "US" index
subway_lines[train1].index("US") - subway_lines[train1].index(stop1)
#mark the distance in number of stops
distance1 = subway_lines[train1].index("US") - subway_lines[train1].index(stop1)
#locate which key stop2 is a value of
#locate the index in the array stop2 is
	#subway_lines[train2].index(stop2)
#count how far stop2's index is from "US" 
distance2 = subway_lines[train2].index("US") - subway_lines[train2].index(stop2)
#add the distance in number stops to mark made above
total_stops = distance1.abs + distance2.abs 
puts "Your trip length is #{total_stops} stops."