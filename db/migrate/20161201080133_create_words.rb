class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :Word
      t.string :Translation
      t.integer :IDWordType
      t.string :IPA
      t.integer :IDDictionary
      t.integer :IDUser

      t.timestamps null: false
    end
  end
end
