class Category < ActiveRecord::Base
  has_many :articles
  paginates_per 10
  
  def slug
    name.parameterize
  end
  
end
