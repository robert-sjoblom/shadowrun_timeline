# frozen_string_literal: true

json.extract! source, :id, :created_at, :updated_at
json.url source_url(source, format: :json)
