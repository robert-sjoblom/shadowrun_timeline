# frozen_string_literal: true

require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/sources", type: :request do
  # Sourcev2. As you add validations to Sourcev2, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { name: "SR Book" }
  end

  let(:invalid_attributes) do
    { name: nil }
  end

  describe "GET /index" do
    it "renders a successful response" do
      create(:source)
      get sources_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      source = create(:source)
      get source_url(source)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_source_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      source = create(:source)
      get edit_source_url(source)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new source" do
        expect do
          post sources_url, params: { source: valid_attributes }
        end.to change(Source, :count).by(1)
      end

      it "redirects to the created source" do
        post sources_url, params: { source: valid_attributes }
        expect(response).to redirect_to(source_url(Source.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new source" do
        expect do
          post sources_url, params: { source: invalid_attributes }
        end.to change(Source, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post sources_url, params: { source: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      it "updates the requested source" do
        source = create(:source)
        patch source_url(source), params: { source: new_attributes }
        source.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the source" do
        source = create(:source)
        patch source_url(source), params: { source: new_attributes }
        source.reload
        expect(response).to redirect_to(source_url(source))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e to display the 'edit' template)" do
        source = create(:source)
        patch source_url(source), params: { source: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested source" do
      source = create(:source)
      expect do
        delete source_url(source)
      end.to change(Source, :count).by(-1)
    end

    it "redirects to the sources list" do
      source = create(:source)
      delete source_url(source)
      expect(response).to redirect_to(sources_url)
    end
  end
end