class Restaurant < ApplicationRecord
	has_many :menus, dependent: :destroy
	#belongs_to :user
end
