Rails.application.routes.draw do

	get	 '/'       => 'main#index'
	post '/'       => 'main#indexP'

	get	 '/result' => 'main#result'

	get  '/clear'  => 'main#clear'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
