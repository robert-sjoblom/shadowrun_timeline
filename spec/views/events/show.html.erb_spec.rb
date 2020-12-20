# frozen_string_literal: true

require "rails_helper"

RSpec.describe "events/show", type: :view do
  before do
    @event = create(:event)
  end

  it "renders description" do
    render
    expect(rendered).to match(/Hostile Takeover/)
  end
end
