# frozen_string_literal: true

# == Schema Information
#
# Table name: event_sources
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :uuid             not null
#  source_id  :uuid             not null
#
# Indexes
#
#  index_event_sources_on_event_id   (event_id)
#  index_event_sources_on_source_id  (source_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (source_id => sources.id)
#
class EventSource < ApplicationRecord
  belongs_to :source
  belongs_to :event
end
