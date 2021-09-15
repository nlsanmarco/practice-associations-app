class Meeting < ApplicationRecord
  validates :title, :agenda, :location, :time, presence: true
  validates :time > Time.now

  has_many :speaker_meetings
  has_many :speakers, through: :speaker_meetings
end
