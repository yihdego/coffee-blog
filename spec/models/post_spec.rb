require 'rails_helper'

RSpec.describe Post, type: :model do
  post = Post.create!(title: "Test Post", body: "Filler text")
  context 'attributes' do
    it 'has a title' do
      expect(post.title).to eq "Test Post"
    end
    it 'has a body' do
      expect(post.body).to eq "Filler text"
    end
  end
  context 'associations' do
    it 'has no comments' do
      expect(post.comments).to be_empty
    end
    it 'has no votes' do
      expect(post.upvotes).to be_empty
    end
    it 'has has comments' do
      comment = Comment.create(body:"Troll comment", post: post)
      expect(post.comments).to include(comment)
    end
    it 'has has votes' do
      Upvote.create(like:true, votable: post)
      Upvote.create(like:false, votable: post)
      expect(post.upvotes.count).to eq 2
    end
  end
end
