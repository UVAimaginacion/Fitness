class Event < ApplicationRecord
  validates :responsable, :nombreEven, :lugar, :fechaHora, :descripcion, :telefono, :email,:presence => {:message => "Espacios vacios"}
end
