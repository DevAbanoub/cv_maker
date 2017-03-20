class CreateCvs < ActiveRecord::Migration[5.1]
  def change
    create_table :cvs do |t|
      t.string :language
      t.string :color
      t.string :font
      t.integer :size
      t.float :line_spacing
      t.references :user, foreign_key: true
      t.references :template, foreign_key: true

      t.timestamps
    end
    add_index :cvs, [:user_id, :created_at]
    add_index :cvs, [:template_id, :created_at]
  end
end
