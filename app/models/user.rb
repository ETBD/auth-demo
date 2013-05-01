require 'ricksteves/auth/client/model_helpers'

class User < ActiveRecord::Base
  include RickSteves::Auth::Client::ModelHelpers

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :trackable
end
