class CreateSignatures < ActiveRecord::Migration[6.0]
  def change
    create_table :signatures do |t|
      t.references :petition, null: false, foreign_key: true
      t.references :signee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
