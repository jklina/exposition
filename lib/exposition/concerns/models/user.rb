module Exposition
  module Concerns
    module Models
      module User
        extend ActiveSupport::Concern
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

        included do
          attr_accessor :remember_token

          validates_presence_of :name, :email
          validates_length_of :name, maximum: 50
          validates_length_of :email, maximum: 244
          validates_length_of :password, minimum: 6
          validates_uniqueness_of :email, case_sensitive: false
          validates_format_of :email, with: VALID_EMAIL_REGEX

          has_secure_password
        end

        class_methods do
        end

        # Returns true if the given token matches the digest.
        def authenticated?(remember_token)
          BCrypt::Password.new(remember_digest).is_password?(remember_token)
        end

        # Remembers a user in the database for use in persistent sessions.
        def set_encrypted_remember_token!
          self.remember_token = generate_new_token
          update_attribute(:remember_digest, Encryptor.encrypt(remember_token))
        end

        private

        def generate_new_token
          SecureRandom.urlsafe_base64
        end
      end
    end
  end
end
