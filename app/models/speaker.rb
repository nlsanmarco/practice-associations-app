class Speaker < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_many :speaker_meetings
  has_many :meetings, through: :speaker_meetings
  has_many :suboridinates, class_name "Speaker", foreign_key: "boss_id"
  belongs_to :boss, class_name: "Speaker". optional: true
end
