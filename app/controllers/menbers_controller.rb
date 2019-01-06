class MenbersController < ApplicationController
  def index
    @menbers = Menber.all
  end

  def show
    @menber = Menber.find_by(id: params[:id])
  end

  def new
     @menber = Menber.new
  end

  def create
    @menber = Menber.new(name: params[:name], email: params[:email],job: params[:job],sikaku: params[:sikaku],sonota: params[:sonota],hitokoto: params[:hitokoto])
    # 保存が成功したかどうかで条件分岐をしてください
    if @menber.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/menbers/#{@menber.id}")
    else
      render("menbers/new")
    end
  end


  def edit
    @menber = Menber.find_by(id: params[:id])
  end

  def update
    @menber = Menber.find_by(id: params[:id])
    @menber.name = params[:name]
    @menber.email = params[:email]
    @menber.job = params[:job]
    @menber.sikaku = params[:sikaku]
    @menber.sonota = params[:sonota]
    @menber.hitokoto = params[:hitokoto]


    # 画像を保存する処理を追加してください
    if params[:image]
      @menber.image_name = "#{@menber.id}.jpg"
      image = params[:image]
      File.binwrite("public/menber_images/#{@menber.image_name}", image.read)
    end

    if @menber.save
      redirect_to("/menbers/#{@menber.id}")
    else
      render("menbers/edit")
    end
  end
end
