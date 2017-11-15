class CreateCharacterFeatsMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :character_feats_maps do |t|
      t.string :charname
      t.string :featname
      t.references :character, foreign_key: true
      t.references :feat, foreign_key: true

      t.timestamps
    end
  end
end
