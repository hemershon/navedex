class Project < ApplicationRecord
  has_and_belongs_to_many :naver
  
  validates :name, presence: true
end
