# frozen_string_literal: true

require "rails_helper"

RSpec.describe Event, type: :model do
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:year) }
  it { is_expected.to have_many(:sources).through(:event_sources) }
  it { is_expected.to accept_nested_attributes_for(:event_sources) }
end
