# frozen_string_literal: true

# == Schema Information
#
# Table name: format_photos
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FormatPhoto < ApplicationRecord
  has_one :tariff
end
