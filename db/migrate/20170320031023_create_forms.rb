class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.integer :position
      t.references :user, foreign_key: true
      t.references :cat_form, foreign_key: true

      t.timestamps
    end
    add_index :forms, [:user_id, :created_at]
    add_index :forms, [:cat_form_id, :created_at]
  end
end
