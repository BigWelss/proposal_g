class Usuario < ApplicationRecord
	validates :login, presence: true, length: { maximum: 30 }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
