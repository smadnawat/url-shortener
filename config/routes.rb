Rails.application.routes.draw do
  root 'home#index'
  get 'stats' => 'home#stats'
  post 'short' => 'home#short'
  # -----------
  get "/:code" => "home#page_redirect"
end
