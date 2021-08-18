class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :posts
    mount_uploader :image, ImageUploader
    
    validates :name, presence: true, length: { maximum: 30 }

    before_validation { email.downcase! }
    validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, if: :password_required?

    private
    def password_required?
        password.present?
    end
end
