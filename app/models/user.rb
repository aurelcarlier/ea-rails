class User < ActiveRecord::Base
  validates_presence_of :firstname, :lastname, :email, :password_digest, :role
  has_secure_password

  def admin?
    role == 'admin'
  end
end
