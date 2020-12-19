# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id            :uuid             not null, primary key
#  date          :datetime
#  date_accuracy :integer
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Event < ApplicationRecord
  validates :description, presence: true
end
