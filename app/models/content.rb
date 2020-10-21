class Content < ApplicationRecord
  has_many :genres
  has_many :genres ,through: :genre_contents 

  belongs_to :director

  has_many :actors
  has_many :actors ,through: :actor_contents

  belongs_to :screeningdate

end