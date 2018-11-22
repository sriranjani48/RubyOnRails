Rails.application.routes.draw do
	get 'problem/list'
	get 'problem/new'
	post 'problem/create'
	patch 'problem/update'
	get 'problem/list'
	get 'problem/show'
	get 'problem/edit'
	get 'problem/delete'
	get 'problem/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
