class PostsController < ApplicationController

  before_action :set_topic

  def index
    @post = Post.new
    @posts = @topic.posts.includes(:user)
  end

  def new
  end

  def create
    @post = @topic.posts.new(post_params)
  end

  private

  def post_params
    params[:post].permit(:content).merge(user_id: current_user.id)
  end

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

end
