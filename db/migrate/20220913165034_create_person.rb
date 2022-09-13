class CreatePerson < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :trash_score, null: false
      t.integer :clean_score, null: false
      t.string :country_team
      t.timestamps
    end
  end
end
