class AddProjectToNaver < ActiveRecord::Migration[6.1]
  def change
    add_reference :navers, :project, foreign_key: true
  end
end
