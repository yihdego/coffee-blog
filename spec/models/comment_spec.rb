require 'rails_helper'

RSpec.describe Comment, type: :model do
  post = Post.create!(title: "Test Post", body: "Filler text")
  comment = Comment.create!(body: "Troll text", post: post)
  context 'attributes' do
    it 'has a body' do
      expect(comment.body).to eq "Troll text"
    end
  end
  context 'associations' do
    it 'has no votes' do
      expect(comment.upvotes).to be_empty
    end
    it 'has has votes' do
      Upvote.create(like:false, votable: comment)
      Upvote.create(like:false, votable: comment)
      expect(comment.upvotes.count).to eq 2
    end
  end
end
