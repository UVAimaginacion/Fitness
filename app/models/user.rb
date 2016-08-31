class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  validates :name, presence:true
  validates :lastname, presence:true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum rol: [ :admin, :usuario  ]
  has_many :events
  before_create :define_rol


  def define_rol
    self.rol = "usuario" unless self.rol.present?
  end



end

