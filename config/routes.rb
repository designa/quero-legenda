DesignaDefault::Application.routes.draw do
  root to: "welcome#index"

  get "/search", to: "searchs#index", as: :search_video
  post "/search", to: "searchs#result", as: :search_result
end
