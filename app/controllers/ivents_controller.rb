class IventsController < ApplicationController


  def new
    @ivent = Ivent.new
  end


  def show
    @ivent = Ivent.find_by(id: params[:id])
  end

  def create
    @ivent = Ivent.new(content:params[:content])
    @ivent.save
    redirect_to("/")
  end


  def edit
    @ivent = Ivent.find_by(id: params[:id])
  end

  def update
    @ivent = Ivent.find_by(id: params[:id])
    @ivent.content = params[:content]
    @ivent.summry = params[:summry]
    @ivent.sentence = params[:sentence]

    if params[:image]
      @ivent.image_name = "#{@ivent.id}.jpg"
      image = params[:image]
      File.binwrite("public/ivent_images/#{@ivent.image_name}", image.read)
      redirect_to("/")
    else
      @ivent.save
      redirect_to("/")
    end


  end

  def destroy
    @ivent = Ivent.find_by(id: params[:id])
    @ivent.destroy
    redirect_to("/")
  end
end
