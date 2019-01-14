# frozen_string_literal: true

# == Schema Information
#
# Table name: tariffs
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tariff < ApplicationRecord
  belongs_to :tariff_group, dependent: :destroy
  has_one :format_photo, dependent: :destroy
end
