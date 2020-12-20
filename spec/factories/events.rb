# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    year { 1999 }
    month { 2 }
    day { 14 }
    description { "Hostile Takeover" }
  end
end
