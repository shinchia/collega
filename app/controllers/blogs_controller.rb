class BlogsController < ApplicationController
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
      @ivent.sheet_name = "#{@ivent.id}.jpg"
      sheet = params[:image]
      File.binwrite("public/ivent_jpg/#{@ivent.image_name}", image.read)
      redirect_to("/")
    else
      @ivent.save
      redirect_to("/")
    end


  end

  def destroy
    @video = Video.find_by(id: params[:id])
    @video.destroy
    redirect_to("/")
  end
end
