class Comentario < ActiveRecord::Base
  	belongs_to :post
  	validates :comment,
				presence: true

    before_create :set_like

	def set_like
		self.likes=0
	end
end
