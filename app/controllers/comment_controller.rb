class CommentController < ApplicationController
	def create
		@comment = Comment.new
		@comment.bk_intro_id = params[:bk_intro_id]
		@comment.nickname = params[:nickname]
		@comment.comment = params[:comment]
		@comment.save

		redirect_to detail_path(@comment.bk_intro_id)
	end

	  # def create
  	# @bk_intro = BkIntro.new
	  # @bk_intro.title = params[:title]
	  # @bk_intro.price = params[:price]
	  # @bk_intro.setsumei = params[:setsumei]
	  # @bk_intro.hyouka = params[:hyouka]
	  # if @bk_intro.save
   #     redirect_to detail_path(@bk_intro.id)
   #  else
   #     render :new
   #  end
	
end