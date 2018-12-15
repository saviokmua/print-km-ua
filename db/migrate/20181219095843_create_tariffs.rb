class CreateTariffs < ActiveRecord::Migration[5.2]
  def change
    create_table :tariffs do |t|
      t.string :name
      t.numeric :price
      t.timestamps
    end
    add_index :tariffs, :name
    add_index :tariffs, :price
  end
end
