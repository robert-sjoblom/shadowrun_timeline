# frozen_string_literal: true

require "rails_helper"

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = create(:event)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1999/)
    expect(rendered).to match(/Hostile Takeover/)
  end
end
