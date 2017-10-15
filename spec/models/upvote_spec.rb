require 'rails_helper'

RSpec.describe Upvote, type: :model do
  post = Post.create!(title: "Test Post", body: "Filler text")
  comment = Comment.create(body:"Troll comment", post: post)
  vote1 = Upvote.create(like:true, votable: post)
  vote2 = Upvote.create(like:false, votable: post)

  context 'attributes' do
    it 'has a boolean of true for like' do
      expect(vote1.like).to eq true
    end
    it 'has a boolean of false for like' do
      expect(vote2.like).to eq false
    end
  end

  context 'a post as a score totalling positive and negative likes' do
    it 'has a post of 0' do
      expect(post.score).to eq 0
    end

    it 'has a score of 2' do
      Upvote.create(like:true, votable: comment)
      Upvote.create(like:true, votable: comment)
      expect(comment.score).to eq 2
    end
  end
end
