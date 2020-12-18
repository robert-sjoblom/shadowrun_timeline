# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    year { 1999 }
    date { "2020-12-18 10:46:13" }
    description { "Hostile Takeover" }
  end
end
