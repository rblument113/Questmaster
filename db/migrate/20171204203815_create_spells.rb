class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :castingtime
      t.string :range
      t.integer :components
      t.string :duration
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
