class Content < ApplicationRecord
  # validates :title, :director, :screening_date , :screening_time , :genre ,:synopsis, :impressions,  :image, :rating ,presence: true
  # validates_associated :director , :actor , :genre , :screening_date 
  # validates :title ,uniqueness: true


  has_many :genres,foreign_key: 'content_id'
  has_many :genres ,through: :genre_contents 
  accepts_nested_attributes_for :genre_contents,allow_destroy: true

  belongs_to :director,foreign_key: 'director_id'
  accepts_nested_attributes_for :directors ,allow_destroy: true


  has_many :actors,foreign_key: 'content_id'
  has_many :actors ,through: :actor_contents
  accepts_nested_attributes_for :actor_contents,allow_destroy: true


  belongs_to :screeningdate
  accepts_nested_attributes_for :screeningdates ,allow_destroy: true


end