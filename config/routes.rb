Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/pets" => "pets#index"
    get "/pets/:id" => "pets#show"
    post "/pets" => "pets#create"
    patch "/pets/:id" => "pets#update"
    delete "/pets/:id" => "pets#destroy"
  end
end
