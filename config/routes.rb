Rails.application.routes.draw do
root to: "boxes#index"

resources :boxes, only: [:create, :destroy, :show] do
  resources :products, only: [:create, :destroy, :edit, :update, :show]
end

end
