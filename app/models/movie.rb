class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :year_released, presence: true
	validates :description, presence: true
end
