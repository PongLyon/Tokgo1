Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 有关此文件中可用的 DSL 的详细信息, see https://guides.rubyonrails.org/routing.html
  # root "static_pages#home"
  get "/home", to: "static_pages#home"
  get "/test", to: "static_pages#test"


  # resources :note, path: '/note_pages'
  # resource :note_pages
  get "/note", to: "note_pages#show"
  get "/note/documents", to: "note_pages#documents"
  get "/note/documents/:file", to: "note_pages#note"


  get "/index", to: "blog_pages#index"
  get "static_pages/home"
end
