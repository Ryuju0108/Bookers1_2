class Book < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true

	# def add_error
	# 	if title.empty?
	# 		errors.add(:title, "can't be blank")
	# 	end
	# 	if body.empty?
	# 		errors.add(:body, "can't be blank")
	# 	end
	# end
end
