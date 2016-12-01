class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name
      t.string :Description

      t.timestamps null: false
    end
  end
end
