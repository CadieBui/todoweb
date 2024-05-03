# frozen_string_literal: true

json.extract! tododb, :id, :title, :content, :priority, :status, :startDate, :endDate, :label, :created_at, :updated_at
json.url tododb_url(tododb, format: :json)
