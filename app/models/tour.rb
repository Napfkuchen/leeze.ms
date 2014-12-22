class Tour < ActiveRecord::Base
  validates :title, :teaser, :description, :url, presence: true
  validates :url, format: %r|\Ahttp(s?)://www.google.com/maps/|
end