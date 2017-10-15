class Upvote < ApplicationRecord
  belongs_to :votable, polymorphic: true

end
