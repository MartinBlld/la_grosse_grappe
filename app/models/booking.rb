class Booking < ApplicationRecord
  belongs_to :grapevine
  belongs_to :user
end
