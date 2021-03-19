class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      #t.references :naver, null: true, foreign_key: true

      t.timestamps
    end
  end
end
