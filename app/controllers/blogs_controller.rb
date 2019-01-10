class BlogsController < ApplicationController


  def new
    @blog = Blog.new
  end


  def show
    @blog = Blog.find_by(id: params[:id])
  end

  def create
    @blog = Blog.new(content:params[:content])
    @blog.save
    redirect_to("/")
  end


  def edit
    @blog = Blog.find_by(id: params[:id])
  end

  def update
    @blog = Blog.find_by(id: params[:id])
    @blog.content = params[:content]
    @blog.summry = params[:summry]
    @blog.sentence = params[:sentence]

    if params[:image]
      @blog.image_name = "#{@blog.id}.jpg"
      image = params[:image]
      File.binwrite("public/blog_jpg/#{@blog.image_name}", image.read)
      redirect_to("/")
    else
      @blog.save
      redirect_to("/")
    end


  end

  def destroy
    @blog = Blog.find_by(id: params[:id])
    @blog.destroy
    redirect_to("/")
  end
end
