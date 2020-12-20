# frozen_string_literal: true

require "rails_helper"

RSpec.describe EventSource, type: :model do
  it { is_expected.to belong_to(:event) }
  it { is_expected.to belong_to(:source) }
end
