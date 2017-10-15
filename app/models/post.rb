class Post < ApplicationRecord
  has_many :upvotes, as: :votable
end
