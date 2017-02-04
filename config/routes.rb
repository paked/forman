Rails.application.routes.draw do
  namespace :v1 do
    get 'ping', to: 'ping#ping'

    get 'user/auth', to: 'authentication#authenticate'

    post 'reports', to: 'reports#new'

    get 'reports/receipts', to: 'receipts#index'
    post 'reports/:report_id/receipts', to: 'receipts#new', as: 'report'
  end
end
