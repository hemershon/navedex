class Naver < ApplicationRecord
  belongs_to :user
  has_many :project
end