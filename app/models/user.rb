class User < ApplicationRecord
    before_create :prepare_username

    has_secure_password

    validates :username, :email, uniqueness: true
    validates :first_name, :last_name, :email, presence: true
    validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }

    def prepare_username
        self.username = (self.first_name + ' ' + self.last_name).to_s.downcase
    end
end
