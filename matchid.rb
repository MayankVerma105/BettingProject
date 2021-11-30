class Matchid < ApplicationRecord
	belongs_to:betting, class_name:"Betting",foreign_key:"betting_id"



	#assuming minimum points given is less than 50
	total = 0
	def min_points
			total-=50
	end

	def has_points?(x)
		if x <= 50
	return true
		else
	return false

	end

	obj = Matchid.new

	obj.min_points()
	obj.has_points()

	
	#validates :points, presence: true
	validates :team, presence: true
 	validates :has_points
end
end
