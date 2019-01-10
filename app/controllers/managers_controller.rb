class ManagersController < ApplicationController


  def index
    @managers = Manager.all
  end

  def show
    @manager = Manager.find_by(id: params[:id])
  end

  def new
     @manager = Manager.new
  end

  def create
    @manager = Manager.new(name: params[:name], email: params[:email],job: params[:job],sikaku: params[:sikaku],sonta: params[:sonota],hitokoto: params[:hitokoto])
    # 保存が成功したかどうかで条件分岐をしてください
    if @manager.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/managers/#{@manager.id}")
    else
      render("managers/new")
    end
  end


  def edit
    @manager = Manager.find_by(id: params[:id])
  end

  def update
    @manager = Manager.find_by(id: params[:id])
    @manager.name = params[:name]
    @manager.email = params[:email]
    @manager.job = params[:job]
    @manager.sikaku = params[:sikaku]
    @manager.sonota = params[:sonota]
    @manager.hitokoto = params[:hitokoto]

    # 画像を保存する処理を追加してください
    if params[:image]
      @manager.image_name = "#{@manager.id}.jpg"
      image = params[:image]
      File.binwrite("public/manager_images/#{@manager.image_name}", image.read)
    end

    if @manager.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/managers/#{@manager.id}")
    else
      render("managers/edit")
    end
  end
end
