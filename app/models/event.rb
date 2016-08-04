class Event < ApplicationRecord
  validates :responsable, presence:true, length: { maximum: 5 }
  validates :nombreEven, presence:true
  validates :lugar, presence:true
  validates :fechaHora, presence:true
  #validates :descripcion, presence:true
  validates :telefono, presence:true, numericality: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true
end
