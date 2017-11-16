class CreateFeats < ActiveRecord::Migration[5.1]
  def change
    create_table :feats do |t|
      t.string :featname
      t.integer :level
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
