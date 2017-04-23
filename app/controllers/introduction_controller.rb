class IntroductionController < ApplicationController
  # protect_from_forgery with: :exception

  #
  def new
  	@pageTitle = "新しい本の紹介の作成ページ new"
  	@pageIntro1 = "紹介したい本の題名、価格、説明、評価を設定して、新しい本の紹介を作成できるようになっている"
  	@pageIntro2 = "題名、価格、評価が空欄の本は作成できないようになっている"
    @bk_intro = BkIntro.new
  end

  def create
  	@bk_intro = BkIntro.new
	  @bk_intro.title = params[:title]
	  @bk_intro.price = params[:price]
	  @bk_intro.setsumei = params[:setsumei]
	  @bk_intro.hyouka = params[:hyouka]
	  if @bk_intro.save
       redirect_to detail_path(@bk_intro.id)
    else
       render :new
    end
	end


  def detail
  	@pageTitle = "本の個別紹介ページ detail"
  	@pageIntro1 = "作成した本の個別のページが存在し、その本の題名、価格、説明、評価が見られるようになっている　編入、削除もできるのよ"
  	@pageIntro2 = "本にコメントをつけることができ、コメントには投稿者のニックネームと本文が作成できるようになっている"

  	@bk_intro = BkIntro.find(params[:id])

    # @comments = Comment.where(bk_intro_id: @bk_intro.id)
  end

  def list
  	@pageTitle = "本の紹介一覧ページ list" 	
  	@pageIntro1 = "本の一覧ページが存在し、そこから本の個別のページに行けるようになっている"
  	@bk_intros = BkIntro.all
  end

  def edit
    @pageTitle = "投稿した本の紹介を編集する edit"
    @pageIntro1 = "へんしゅうううううう" 
    @bk_intro = BkIntro.find(params[:id])
  end

  def update
    @bk_intro = BkIntro.find(params[:id])
    @bk_intro.title = params[:title]
    @bk_intro.price = params[:price]
    @bk_intro.setsumei = params[:setsumei]
    @bk_intro.hyouka = params[:hyouka]
    @bk_intro.save
    
    redirect_to detail_path(@bk_intro.id)
  end

  def destroy
    @bk_intro = BkIntro.find(params[:id])
    @bk_intro.destroy
    
    redirect_to root_path
  end
end
