Rails.application.routes.draw do
  get 'activerecord/index'

	root 'introduction#list'
	get 'new' ,to: 'introduction#new'
	#get 'book_list' ,to: 'introduction#bookList'
	post 'create' ,to: 'introduction#create'
	get 'detail/:id' ,to: 'introduction#detail',as: 'detail'
	get 'detail/:id/edit' ,to: 'introduction#edit',as:'edit'
	patch 'detail/:id' ,to: 'introduction#update',as:'update'
	delete 'detail/:id' ,to: 'introduction#destroy',as:'destroy'
	post 'detail/:id/comment' ,to:'comment#create',as:"comment"

	
	# get 'localhost:3000の後ろにくるわかりやすい?url' ,to: 'コントローラ名#アクション名'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
