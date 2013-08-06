class Article < ActiveRecord::Base
	validates :title, :category, presence: true
	
	uploads_one :picture, thumb: [90,80], regular: [580,240] , large: [940,380]
	
	belongs_to :category
	
	paginates_per 10
	
	default_scope -> { order(published_at: :desc) }
	
	def self.published
	  where('published_at <= ?', Time.now)
	end
	
	def self.featured
	  where(featured: true)
	end
	
		
	def to_param
		"#{id} #{title}".parameterize
	end
end
