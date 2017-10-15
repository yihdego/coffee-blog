class Post < ApplicationRecord
  has_many :comments
  has_many :upvotes, as: :votable
end
