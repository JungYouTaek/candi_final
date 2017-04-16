class CreateCands < ActiveRecord::Migration[5.0]
  def change
    create_table :cands do |t|
      t.string :name
      t.string :date
      t.integer :beginc
      t.integer :endc
      t.text :act
      t.string :loca
      t.string :pwd

      t.timestamps
    end
  end
end
