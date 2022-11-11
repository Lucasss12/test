class Attendance < ApplicationRecord
    validates :stripe_customer_id, 
    presence:true

    has_one :event
end
