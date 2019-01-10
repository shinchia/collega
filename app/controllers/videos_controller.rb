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
    @video.summry = params[:summry]
    @video.teacher = params[:teacher]
    @video.sentence = params[:sentence]

    if params[:image]
      @video.image_name = "#{@video.id}.mp4"
      image = params[:image]
      File.binwrite("public/video_mp4/#{@video.image_name}", image.read)
      redirect_to("/")
    elsif params[:sheet]
      @video.sheet_name = "#{@video.id}.jpg"
      sheet = params[:sheet]
      File.binwrite("public/video_jpg/#{@video.sheet_name}", sheet.read)
      redirect_to("/")
    else
      @video.save
      redirect_to("/")
    end


  end

  def destroy
    @video = Video.find_by(id: params[:id])
    @video.destroy
    redirect_to("/")
  end
end
