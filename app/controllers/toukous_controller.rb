class ToukousController < ApplicationController
  def new
    @toukou = Toukou.new
  end


  def show
    @toukou = Toukou.find_by(id: params[:id])
  end

  def create
    @toukou = Toukou.new(content:params[:content])
    @toukou.save
    redirect_to("/")
  end


  def edit
    @toukou = Toukou.find_by(id: params[:id])
  end

  def update
    @toukou = Toukou.find_by(id: params[:id])
    @toukou.content = params[:content]
    @toukou.summry = params[:summry]
    @toukou.sentence = params[:sentence]

    if params[:image]
      @toukou.image_name = "#{@toukou.id}.jpg"
      image = params[:image]
      File.binwrite("public/toukou_images/#{@toukou.image_name}", image.read)
      redirect_to("/")
    else
      @toukou.save
      redirect_to("/")
    end


  end

  def destroy
    @toukou = Toukou.find_by(id: params[:id])
    @toukou.destroy
    redirect_to("/")
  end
end
