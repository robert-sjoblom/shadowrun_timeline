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

  has_many :event_sources, dependent: :destroy
  has_many :sources, through: :event_sources

  accepts_nested_attributes_for :event_sources
end
