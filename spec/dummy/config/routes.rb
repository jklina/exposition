Rails.application.routes.draw do
  mount Exposition::Engine => "/blog"
end
