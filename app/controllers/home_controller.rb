class HomeController < ApplicationController
  def top
    @videos = Video.all.order(created_at: :desc)
    @topics = Topic.all.order(created_at: :desc)
    @ivents = Ivent.all.order(created_at: :desc)
    @blogs = Blog.all.order(created_at: :desc)
    @users = User.all.order(created_at: :desc)
    @newTopic = Topic.new
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
