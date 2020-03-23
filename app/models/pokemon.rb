class Pokemon < ApplicationRecord
  belongs_to :user
  belongs_to :team

  has_many_attached :photos
end
