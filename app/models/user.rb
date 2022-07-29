class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :id_card

  belongs_to :address

  validates :id_card, attached: true, content_type: {in: ['image/png', 'image/jpeg', 'image/gif', 'image/webp', 'image/avif'], message: "Not a supported image format. Should be either .png, .jpeg, .gif, .webp or .avif"}
end
