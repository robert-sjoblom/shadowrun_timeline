# frozen_string_literal: true

require "rails_helper"

RSpec.describe "sources/new", type: :view do
  before do
    assign(:source, build(:source))
  end

  it "renders new source form" do
    render

    assert_select "form[action=?][method=?]", sources_path, "post" do
    end
  end
end
