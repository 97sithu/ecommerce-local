class Cart < ApplicationRecord
  belongs_to :good
  belongs_to :customer
end
