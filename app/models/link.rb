# frozen_string_literal: true

class Link < ApplicationRecord
  validates :full_link, presence: true
  validates :short_link, presence: true
  validates_format_of :short_link, with: /\A[\w]+\z/, on: :create, message: "must be alphanumeric and underscores only"
  validates_uniqueness_of :short_link
end
