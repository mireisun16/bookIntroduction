class BkIntro < ApplicationRecord
	has_many :comments
	validates :title,presence:true
	validates :price,presence:true
	validates :hyouka,presence:true
end
