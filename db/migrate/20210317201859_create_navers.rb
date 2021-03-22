class CreateNavers < ActiveRecord::Migration[6.1]
  def change
    create_table :navers do |t|
      t.string :name
      t.date :birthdate
      t.string :job_role
      t.date :admission_date
      #t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
