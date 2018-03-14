class Student < ApplicationRecord
	has_and_belongs_to_many :teams
	validates	:email, presence: true, uniqueness: true
	validates	:first_name, :last_name, presence: true
end
