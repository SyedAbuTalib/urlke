# frozen_string_literal: true

json.extract! link, :id, :short_link, :full_link, :created_at, :updated_at
json.url link_url(link, format: :json)
