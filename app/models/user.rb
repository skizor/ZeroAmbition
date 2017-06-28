class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_attached_file :avatar, styles: {thumbnail: "50x50", large: "300x150"}
 validates_attachment :avatar, presence: true, content_type: {content_type: ["image/png", "image/jpeg"]},  size: {in: 1..5000.kilobytes}

end
