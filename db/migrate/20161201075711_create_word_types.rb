class CreateWordTypes < ActiveRecord::Migration
  def change
    create_table :word_types do |t|
      t.string :Name
      t.string :Description

      t.timestamps null: false
    end
  end
end
