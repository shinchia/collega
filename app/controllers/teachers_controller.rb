class TeachersController < ApplicationController



  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find_by(id: params[:id])
  end

  def new
     @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(name: params[:name], email: params[:email],job: params[:job],sikaku: params[:sikaku],sonota: params[:sonota],hitokoto: params[:hitokoto])
    if @teacher.save
      redirect_to("/teachers/#{@teacher.id}")
    else
      render("teachers/new")
    end
  end


  def edit
    @teacher = Teacher.find_by(id: params[:id])
  end

  def update
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.job = params[:job]
    @teacher.sikaku = params[:sikaku]
    @teacher.sonota = params[:sonota]
    @teacher.hitokoto = params[:hitokoto]

    # 画像を保存する処理を追加してください
    if params[:image]
      @teacher.image_name = "#{@teacher.id}.jpg"
      image = params[:image]
      File.binwrite("public/teacher_images/#{@teacher.image_name}", image.read)
    end

    if @teacher.save
      redirect_to("/teachers/#{@teacher.id}")
    else
      render("teachers/edit")
    end
  end
end
