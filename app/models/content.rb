class Content < ApplicationRecord
  has_many :genres
  has_many :genres ,through: :genre_contents 

  belongs_to :director

  has_many :actor 
  has_many :actor ,through: :actor_contents

  belongs_to :screeningdate

end