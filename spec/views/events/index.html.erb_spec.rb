# frozen_string_literal: true

require "rails_helper"

RSpec.describe "events/index", type: :view do
  before do
    assign(:events, create_list(:event, 2))
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Hostile Takeover".to_s, count: 2
  end
end
