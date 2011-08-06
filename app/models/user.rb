class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  field :name
  field :surname
  field :birthday, :type => Date
  field :address
  field :city
  field :zip
  field :phone
  field :cellphone
  field :maritalstatus

  validates_presence_of :name, :surname
  attr_accessible :name, :surname, :email, :password, :password_confirmation
end
