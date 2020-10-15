class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :topics, foreign_key: :owner_id, class_name: 'Topic'

  def show_name
    return prename unless prename.nil?

    'Unbekannt'
  end
end
