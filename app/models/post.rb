class Post < ActiveRecord::Base
	has_many :comentarios
	has_many :users
	validates :contenido, :titulo, 
				presence: true
	before_create :set_like

	def set_like
		self.likes=0
	end
	def self.search(search)
		   where('contenido LIKE ?', "%#{search}%")
	end
end
