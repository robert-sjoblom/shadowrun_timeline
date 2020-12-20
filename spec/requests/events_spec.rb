# frozen_string_literal: true

require "rails_helper"

RSpec.describe "/events", type: :request do
  let(:valid_attributes) do
    { year: 1999, month: 2, description: "Hostile Takeover" }
  end

  let(:invalid_attributes) do
    { day: 2, description: nil }
  end

  describe "GET /index" do
    it "renders a successful response" do
      create(:event)
      get events_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      event = create(:event)
      get event_url(event)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_event_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      event = create(:event)
      get edit_event_url(event)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Event" do
        expect do
          post events_url, params: { event: valid_attributes }
        end.to change(Event, :count).by(1)
      end

      it "redirects to the created event" do
        post events_url, params: { event: valid_attributes }
        expect(response).to redirect_to(event_url(Event.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Event" do
        expect do
          post events_url, params: { event: invalid_attributes }
        end.to change(Event, :count).by(0)
      end

      it "renders a successful response (i.e to display the 'new' template)" do
        post events_url, params: { event: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      it "updates the requested event" do
        event = create(:event)
        patch event_url(event), params: { event: new_attributes }
        event.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the event" do
        event = create(:event)
        patch event_url(event), params: { event: new_attributes }
        event.reload
        expect(response).to redirect_to(event_url(event))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e to display the 'edit' template)" do
        event = create(:event)
        patch event_url(event), params: { event: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested event" do
      event = create(:event)
      expect do
        delete event_url(event)
      end.to change(Event, :count).by(-1)
    end

    it "redirects to the events list" do
      event = create(:event)
      delete event_url(event)
      expect(response).to redirect_to(events_url)
    end
  end
end
