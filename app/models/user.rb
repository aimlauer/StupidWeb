class User < ApplicationRecord
  attr_accessor :password
  has_secure_password
end
