class TopicsController < ApplicationController

  def index
    @topics = Topic.limit(20).order('id ASC')
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to controller: :topics, action: :index
    else
      reder :new, notice: "スレッドを作成できませんでした"
    end
  end

  def search
    @topics = Topic.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :video_url, :user_id)
  end

end
