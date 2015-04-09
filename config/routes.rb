Rails.application.routes.draw do
  get '/' => 'links#home'

  post '/links' => 'links#create', as:'links'

  get '/:id' => 'links#show', as: 'link'
  
end
