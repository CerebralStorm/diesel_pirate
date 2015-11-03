Rails.application.routes.draw do
  root 'static#index'

  scope :api, defaults: { format: :json }, constraints: { format: :json } do
    scope :v1 do
      resources :messages, except: [:new, :edit]
    end
  end
end
