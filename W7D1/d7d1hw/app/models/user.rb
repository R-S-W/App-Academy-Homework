require 'bcrypt'



class User < ApplicationRecord
    attr_reader :password


    def self.find_by_credentials(uname, pw)
        u = User.find_by(name: uname)
        if u && u.password_digest == BCrypt::Password.create(pw)
            u 
        else
            nil
        end
    end

    def self.generate_session_token
        self.session_token = SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
    end

    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end

    def password=(pw)
        @password= pw
        self.password_digest  = BCrypt::Password.create(pw)
    end



    before_validation :ensure_session_token

    validates :username , presence: true
    validates :session_token, presence: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: {minimum: 6}, allow_nil: true

end
