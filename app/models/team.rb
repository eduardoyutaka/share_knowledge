class Team < ApplicationRecord
	has_and_belongs_to_many	:students
	has_many :projects
	validates :name, presence: true, uniqueness: true
end
