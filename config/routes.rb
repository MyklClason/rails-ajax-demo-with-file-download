Rails.application.routes.draw do
  root 'demo#home'
  get 'demo/download' => 'demo#download', as: :download
  post 'demo/show_options' => 'demo#show_options', as: :show_options
  post 'demo/hide_options' => 'demo#hide_options', as: :hide_options
end
