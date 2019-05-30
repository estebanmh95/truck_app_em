class Truck < ApplicationRecord
  belongs_to :user
  belongs_to :truck_type
  belongs_to :truck_merchandise
  belongs_to :truck_load
  belongs_to :coverage
  belongs_to :city
end
