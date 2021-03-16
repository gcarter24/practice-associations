class Meeting < ApplicationRecord
  validates :title, :agenda, :location, :time,  presence: true
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers
end
