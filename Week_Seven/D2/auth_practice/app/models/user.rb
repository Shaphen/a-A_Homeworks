class User < ApplicationRecord
    # validates :username, :password, :session_token, presence: true
    # validates :password, length: {minimum: 4, allow_nil: true}
    # before_validation :ensure_session_token
    validates :username, presence: true, uniqueness: true
    validates :password, presence: { message: 'Password can\'t be blank'}
    validates :session_token, presence: true, uniqueness: true
    validates :pass, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token

    attr_reader :pass
    
    def self.find_by_credentials(username, pass)
        user = User.find_by(username: username)
        correct_pass = BCrypt::Password.new(user.password)
        return user if user && correct_pass.is_password?(pass)
        nil
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token
        self.session_token = User.generate_session_token
        self.save!
    end

    def ensure_session_token
        unless self.session_token
            self.session_token = User.generate_session_token
        end
    end

    def password=(password)
        @pass = password
        self.password = BCrypt::Password.create(pass)
    end
    
end
