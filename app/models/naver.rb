class Naver < ApplicationRecord
  validates_presence_of :project

  belongs_to :project
end
