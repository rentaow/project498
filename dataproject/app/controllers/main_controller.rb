class MainController < ApplicationController
	def index
		@table_one = CSV.open(Rails.root.join('lib','Expected_Performance_By_Pick.csv'), :headers => true).read
		@table_two = CSV.open(Rails.root.join('lib','Best_value_picks.csv'), :headers => true).read
		@table_three = CSV.open(Rails.root.join('lib','Best_Drafting_teams.csv'), :headers => true).read
	end
end
