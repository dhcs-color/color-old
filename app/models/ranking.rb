class Ranking < ActiveRecord::Base
	attr_accessible :game_id, :user_id, :user_colors

	belongs_to	:game
	belongs_to	:user
	has_one		:result

end
