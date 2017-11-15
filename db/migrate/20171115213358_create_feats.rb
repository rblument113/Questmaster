class CreateFeats < ActiveRecord::Migration[5.1]
  def change
    create_table :feats do |t|
      t.string :featname
      t.string :charclass
      t.integer :level

      t.timestamps
    end
  end
end
