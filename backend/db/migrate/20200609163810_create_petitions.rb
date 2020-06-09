class CreatePetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :petitions do |t|
      t.string :name
      t.string :description
      t.string :submit_to
      t.integer :signature_goal

      t.timestamps
    end
  end
end
