# frozen_string_literal: true

require "rails_helper"

RSpec.describe "sources/index", type: :view do
  before do
    assign(:sources, [create(:source), create(:source, name: "DM")])
  end

  it "renders a list of sources" do
    render
  end
end
