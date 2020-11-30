class Hobby < ApplicationRecord
  attachment :image
  belongs_to :user
end
