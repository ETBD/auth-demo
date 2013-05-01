require 'ricksteves/auth/client/user'

class User < RickSteves::Auth::Client::User
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :trackable, :omniauthable
end
