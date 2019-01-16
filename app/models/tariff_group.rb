# frozen_string_literal: true

# == Schema Information
#
# Table name: tariff_groups
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TariffGroup < ApplicationRecord
  has_many :tariffs
end
