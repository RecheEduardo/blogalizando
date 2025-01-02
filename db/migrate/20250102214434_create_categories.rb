class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false #NOT NULL

      t.timestamps
    end
  end
end
