class Project < ApplicationRecord
    attr_accessor :navers_ids
  
  validates :name, presence: true
end
