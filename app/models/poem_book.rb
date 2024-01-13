class PoemBook < ApplicationRecord
    validates :name, presence: true
    validates :writer, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }

    scope :ordered, -> { order(id: :desc) } 
end
