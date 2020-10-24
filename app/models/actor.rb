class Actor < ApplicationRecord
  # validates :actor, presence: true
  has_many :actor_contents
  has_many :contents ,through: :actor_contents
end
