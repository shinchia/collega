class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def show
    @video = Video.find_by(id: params[:id])
  end

  def create
    @video = Video.new(content:params[:content])
    @video.save
    redirect_to("/")
  end



  def edit
    @video = Video.find_by(id: params[:id])
  end

  def update
    @video = Video.find_by(id: params[:id])
    @video.content = params[:content]
    @video.save
    redirect_to("/")

    if params[:image]
      @video.image_name = "#{@video.id}.mp4"
      image = params[:image]
      File.binwrite("public/#{@video.image_name}", image.read)
    end
  end

  def destroy
    @video = Video.find_by(id: params[:id])
    @video.destroy
    redirect_to("/")
  end
end
