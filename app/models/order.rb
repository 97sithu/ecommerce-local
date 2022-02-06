class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :customer
  belongs_to :good
end
