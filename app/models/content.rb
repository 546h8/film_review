class Content < ApplicationRecord
  # validates :title, :director, :screening_date , :screening_time , :genre ,:synopsis, :impressions,  :image, :rating ,presence: true
  # validates_associated :director , :actor , :genre , :screening_date 
  # validates :title ,uniqueness: true


  has_many :genres
  has_many :genres ,through: :genre_contents 

  belongs_to :director

  has_many :actors
  has_many :actors ,through: :actor_contents

  belongs_to :screeningdate

end