DesignaDefault::Application.routes.draw do
  root to: "welcome#index"

  get "/buscar", to: "searchs#index", as: :search_video
  post "/buscar", to: "searchs#result", as: :search_result

  post "/legenda-ai", to: "subtitles#new", as: :new_subtitles
  post "/obrigado", to: "subtitles#create", as: :create_new_subtitles

end
