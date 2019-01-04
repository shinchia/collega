class HomeController < ApplicationController
  def top
    @videos = Video.all.order(created_at: :desc)
    @topics = Topic.all.order(created_at: :desc)
    @newTopic = Topic.new
    @video = Video.find_by(params[:id])
    @video.sheet_name = "#{@video.id}.jpg"
  end
  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to ("/")
  end
  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(:topic_id => params[:id]) #ここを追加
    @posts = Post.where(topic_id: params[:id])
  end
  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to ("/")
  end
end
