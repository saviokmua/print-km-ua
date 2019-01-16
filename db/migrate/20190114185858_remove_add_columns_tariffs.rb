# frozen_string_literal: true

class RemoveAddColumnsTariffs < ActiveRecord::Migration[5.2]
  def change
    add_column :tariffs, :format_photo_id, :text
    add_index :tariffs, :format_photo_id
    add_column :tariffs, :tariff_group_id, :text
    add_index :tariffs, :tariff_group_id
    remove_column :tariffs, :name, :string
    remove_index :tariffs, :price
  end
end
