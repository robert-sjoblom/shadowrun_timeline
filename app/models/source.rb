# frozen_string_literal: true

# == Schema Information
#
# Table name: sources
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sources_on_name  (name) UNIQUE
#
class Source < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  has_many :event_sources, dependent: :destroy
  has_many :events, through: :event_sources
end
