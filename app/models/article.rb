class Article < ActiveRecord::Base
  belongs_to :admin
	has_many :comments

	validates :title, presence: true
end
