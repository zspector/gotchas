# 7) Closest Point:
# This was an actual interview question that Michael was asked at his recent interview.
# Given a starting point, (x,y), and an array of points, find the point in the array that is closest to the starting point.

# This question uses the Pythagorean Theorem to solve. If the whiteboarder doesn’t know the equation, the distance between two points is:  Distance = ((x2-x1)^2+(y2-y1)^2)^(1/2)
# If the problem is still unclear, come find me and I’ll explain it.

# Ex: point: {x=> 1, y=> 0}, points_array = [{x=> 10, y=> 4},{x=> -3, y=> -1},{x=> -1, y=> 1}]

array = [
	{
		'x' => 10,
		'y' => 4
	},
	{
		'x' => -3,
		'y' => -1
	},
	{
		'x' => -1,
		'y' => 0
	}
]

def closest_point(x, y, array)
	min_distance = distance(x, y, array[0])
	min_index = 0
	array.each_index do |i|
		if distance(x, y , array[i]) < min_distance
			min_distance = distance(x, y, array[i])
			min_index = i
		end
	end
	array[min_index]
end

def distance(x, y, object)
	xp = object['x']
	yp = object['y']
	return Math.sqrt(((x - xp)** 2 + (y - yp) ** 2))
end


puts closest_point(1, 0, array)