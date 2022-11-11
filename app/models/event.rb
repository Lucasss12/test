class Event < ApplicationRecord
    validates :start_date, 
    presence:true

    validates :duration, 
    presence:true
    #multiple de 5

    validates :title, 
    presence:true

    validates :description, 
    presence:true

    validates :price, 
    presence:true,
    length: {in: 1..100}

    validates :location, 
    presence:true

    has_many :attendances
end
