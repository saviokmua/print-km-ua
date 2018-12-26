# frozen_string_literal: true

class CreateTariffGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :tariff_groups do |t|
      t.string :name
      t.timestamps
    end
  end
end
