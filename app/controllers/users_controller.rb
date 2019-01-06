class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
     @user = User.new
  end

  def create
    @user = User.new(name: params[:name], email: params[:email],job: params[:job],sikaku: params[:sikaku],sonota: params[:sonota],hitokoto: params[:hitokoto],)
    # 保存が成功したかどうかで条件分岐をしてください
    if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end


  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.job = params[:job]
    @user.sikaku = params[:sikaku]
    @user.sonota = params[:sonota]
    @user.hitokoto = params[:hitokoto]

    # 画像を保存する処理を追加してください
    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end

    if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

end
