class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum rol: [ :admin, :usuario  ]

  before_create :define_rol

  def define_rol
    self.rol = "usuario" unless self.rol.present?
  end

end
