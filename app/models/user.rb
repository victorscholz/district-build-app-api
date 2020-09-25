class User < ApplicationRecord
	has_many :visit_lists
	has_many :buildings, through: :visit_lists

	has_secure_password
	validates :username, uniqueness: { case_sensitive: false }
end
