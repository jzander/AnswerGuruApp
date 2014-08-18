class CriteriaforanswerController < ApplicationController

	def index
		 @criteriaforanswers = Criteriaforanswer.all
	end


end
