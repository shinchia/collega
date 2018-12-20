class HomeController < ApplicationController
  def top
    @topics = Topic.all
@newTopic = Topic.new
end

def create
  @topic = Topic.new(params[:topic].permit(:title))
  @topic.save
  redirect_to home_top_path
end

def delete
  @topic = Topic.find(params[:id])
  @topic.destroy
  redirect_to home_top_path
end
end
