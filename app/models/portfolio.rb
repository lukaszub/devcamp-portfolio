class Portfolio < ApplicationRecord
	has_many :technologies 
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image 

	def self. angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails')}

	after_initialize :set_defaults

	def set_defaults
		self.thumb_image  ||= Placeholder.image_generator('350','200')
		self.main_image ||= Placeholder.image_generator('600','400')
	end
end
