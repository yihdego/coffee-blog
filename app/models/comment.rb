class Comment < ApplicationRecord
  belongs_to :post
  has_many :upvotes, as: :votable
end
