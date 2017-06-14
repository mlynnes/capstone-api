class Card < ApplicationRecord
  belongs_to :user
  before_save :encrypted_password_key

  private

  def encrypted_password_key
    salt = SecureRandom.random_bytes(64)
    key = ActiveSupport::KeyGenerator.new('password').generate_key(salt)
    crypt = ActiveSupport::MessageEncryptor.new(key)
    # password_key = password # input value from forms
    encrypted_data = crypt.encrypt_and_sign('password')
    self.password = encrypted_data
  end
end
