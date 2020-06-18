class User < ApplicationRecord
  validates :username, presence: true, length: {minimum:3, maximum:12}
  validates :email, presence: true, length: {minimum:3, maximum:12},format: {With: URI::MailTo::EMAIL_REGEXP}
  validates :password, presence: true, length: {minimum:3, maximum:12}
end
