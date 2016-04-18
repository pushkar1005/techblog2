class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :category
	default_scope -> { order(created_at: :desc) }
	validates :user_id, presence: true
	validates :title,   presence: true
	validates :content, presence: true
	validates :category_id, presence: true
	
end
