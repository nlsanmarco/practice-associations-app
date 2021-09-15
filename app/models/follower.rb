class Follower < ApplicationRecord
  has_many :speakers, class_name: "Follower", foreign_key: "leader_id"

  belongs_to :leader, class_name: "Follower", optional: true
end
