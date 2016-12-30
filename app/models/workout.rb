class Workout < ApplicationRecord
	belongs_to :user


	def format_cycle_selection
		if jr
			return 'Jr'
		elsif sr
			return 'Sr'
		end
	end

end
