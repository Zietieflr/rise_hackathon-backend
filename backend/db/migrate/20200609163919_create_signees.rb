class CreateSignees < ActiveRecord::Migration[6.0]
  def change
    create_table :signees do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end
