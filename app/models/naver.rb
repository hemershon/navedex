class Naver < ApplicationRecord
  validates_presence_of :project
  belongs_to :project

  validates :name, :birthdate, :admission_date, :job_role, presence: true

end
