class ActorContent < ApplicationRecord
  belongs_to :content, optional: true
  belongs_to :actor, optional: true
end
