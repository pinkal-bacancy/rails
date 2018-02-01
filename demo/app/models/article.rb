class Article < ApplicationRecord
	 # attr_accessor :title, :text
	  validates :title,:text, presence: true
end
