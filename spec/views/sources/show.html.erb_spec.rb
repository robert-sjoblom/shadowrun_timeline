# frozen_string_literal: true

require "rails_helper"

RSpec.describe "sources/show", type: :view do
  before do
    @source = assign(:source, create(:source))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Handbook/)
  end
end
