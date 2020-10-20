class Content < ApplicationRecord
  has_many :genres
  has_many :genres ,through: :genre_contents 

  
end
