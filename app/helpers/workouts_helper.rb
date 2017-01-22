module WorkoutsHelper
	def increase_weight(weight, increase, week)
		if week == 1
			return weight
		elsif week == 2
			return weight + increase
		elsif week == 3
			return weight + increase + increase
		end
	end
end
