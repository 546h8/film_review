class Screeningdate < ApplicationRecord
  has_many :contents ,foreign_key: 'screeningdate_id'
  # accepts_nested_attributes_for :screeningdates ,allow_destroy: true

end
