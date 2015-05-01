class Game < ActiveRecord::Base
	attr_accessible :game_id, :from_user_id, :to_user_id, :image_path, :is_accepted

	# Relationships
	belongs_to :from_user, class_name: "User", foreign_key: "from_user_id"
	belongs_to :to_user, class_name: "User", foreign_key: "to_user_id"
	has_many :rankings
	has_many :results, :through => :rankings 

	# Validations
	validates_presence_of :game_id, :from_user_id, :to_user_id, :image_path, :is_accepted

	# Scopes

	# Methods
end
