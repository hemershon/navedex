# class NaverSerializer < ApplicationSerializer
#   attributes :id, :name, :birthdate, :job_role, :admission_date, :index

#   def index
#     NaversController.render(:index, assigns: { naver: object }, layout: false ).squish
#   end
# end