Rails.application.routes.draw do
  namespace :v1 do
    get 'ping', to: 'ping#ping'

    get 'receipts', to: 'receipts#index'

    get 'user/auth', to: 'authentication#authenticate'
  end
end
