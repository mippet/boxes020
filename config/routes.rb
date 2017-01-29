Rails.application.routes.draw do
root to: "boxes#index"

resources :boxes, only: [:create, :destroy, :show]
end
