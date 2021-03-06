class Post < ApplicationRecord
  has_many :comments
  has_many :upvotes, as: :votable

  def score
    score = 0
    self.upvotes.each do |vote|
      if vote.like == true
        score += 1
      else
        score -= 1
      end
    end
    return score
  end
end
