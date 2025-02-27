class LikesController < ApplicationController
  def create
    @like = Like.new(post_id: params[:post_id], author_id: current_user.id)
    @post = Post.find(params[:post_id])
    if @like.save
      @post.increment!(:likes_counter)
      redirect_to post_path(@post)
    else
      flash[:error] = @like.errors.full_messages.join(', ')
      redirect_back(fallback_location: root_path)
    end
  end
end
