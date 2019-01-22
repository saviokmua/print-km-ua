# frozen_string_literal: true

class AddNameadminTariffIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean, default: false
    add_column :tariffs, :tariff_id, :text
    add_index :users, :tariff_id
  end
end
