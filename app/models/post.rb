class Post < ActiveRecord::Base
  has_and_belongs_to_many :categories

  validates :title, presence: true
  validates :body, length: {minimum: 10}
end
