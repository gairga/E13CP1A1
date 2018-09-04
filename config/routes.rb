Rails.application.routes.draw do
	get  'sales', to: 'sales#done'
	root 'sales#new'
	post 'add', to: 'sales#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
