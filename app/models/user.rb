# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :albums, through: :user_ratings
  has_many :user_ratings
end
