# frozen_string_literal: true

class CreateFormatPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :format_photos do |t|
      t.string :name
      t.timestamps
    end
    add_index :format_photos, :name
  end
end
