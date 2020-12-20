# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id          :uuid             not null, primary key
#  day         :integer
#  description :text
#  month       :integer
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  validates :description, presence: true
  validates :year, presence: true
end
