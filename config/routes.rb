require 'ricksteves/auth/client/callbacks_controller'

RickstevesCms::Application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions", omniauth_callbacks: "RickSteves::Auth::Client/callbacks"} do
    match "/user/sign_out" => "RickSteves::Auth::Client/callbacks#destroy"
  end

  root :to => "hello#index"
  match "/secure" => "hello#secure", :as => :secure
  match "/auth/ricksteves/callback" => "sessions#create"
  match "/auth/failure" => "sessions#new"
end
