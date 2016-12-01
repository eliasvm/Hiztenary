class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.integer :IDDictionary
      t.integer :IDUSer
      t.string :Name
      t.integer :IDSourceLanguage
      t.integer :IDDestinationLanguage

      t.timestamps null: false
    end
  end
end
