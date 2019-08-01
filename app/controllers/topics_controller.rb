class TopicsController < ApplicationController

  def index
    @topic = Topis.select("title", "video_url")
  end

  def new
  end

  def create
  end

  def search
  end

end
