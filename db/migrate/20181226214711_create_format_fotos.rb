# frozen_string_literal: true

class CreateFormatFotos < ActiveRecord::Migration[5.2]
  def change
    create_table :format_fotos do |t|
      t.string :name
      t.timestamps
    end
    add_index :format_fotos, :name
  end
end
