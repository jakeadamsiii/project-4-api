class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.date :end_date
      t.text :brief
      t.string :video
      t.string :image
      t.integer :target_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
