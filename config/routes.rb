Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      # admin
      namespace :admin do
        resources :users do
          get 'sections', on: :member
        end
      end
      # ログイン
      resources :login, only: %i[new create]

      # ログアウト
      resources :logout, only: [:destroy]
      # TODO
      root to: 'tasks#index'
      resources :tasks do
        post :confirm, action: :confirm_new, on: :new
        post :import, on: :collection
      end
      # task_type
      resources :task_types

      # 日報作成
      resources :daily_report, only: %i[index create]
    end
  end
end
