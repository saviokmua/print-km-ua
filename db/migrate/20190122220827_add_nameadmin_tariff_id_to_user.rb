# frozen_string_literal: true

class AddNameAdminTariffIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :tariff_id, :text
    add_index :users, :tariff_id
  end
end
