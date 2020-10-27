class Actor < ApplicationRecord
  # validates :actor, presence: true
  has_many :actor_contents
  has_many :contents ,through: :actor_contents
  accepts_nested_attributes_for :actor_contents,allow_destroy: true

end
