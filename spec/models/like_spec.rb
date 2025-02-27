require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    first_user = User.new(Name: 'EMre', Photo: 'https://github.com', Bio: 'a perfect person', posts_counter: 0)
    post = Post.create(Title: 'Titlee', Text: 'Text', comments_counter: 0, likes_counter: 0, author: first_user)
    Like.create(author: first_user, post:, post_id: post.id)
    Like.create(author: first_user, post:, post_id: post.id)
  end

  it 'should update likes counter' do
    expect(subject.update_likes_counter).to eq true
    expect(subject.post.likes_counter).to eq 3
  end
end
