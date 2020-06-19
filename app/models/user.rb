# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, length: { minimum: 3, maximum: 20 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 3, maximum: 20 }
end
