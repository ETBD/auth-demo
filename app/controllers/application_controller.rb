class ApplicationController < ActionController::Base
  include RickSteves::Auth::Client::Helpers  
  protect_from_forgery
end
