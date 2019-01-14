# frozen_string_literal: true

class CreateTariffs < ActiveRecord::Migration[5.2]
  def change
    create_table :tariffs do |t|
      t.text :group
      t.text :format
      t.numeric :price
      t.timestamps
    end
    add_index :tariffs, :group
    add_index :tariffs, :format
  end
end
