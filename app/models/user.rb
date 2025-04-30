class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  validates :email_address, presence: true
  validates :password, length: { minimum: 8 }, if: :password_changed?
  validates :firstname, presence: true, length: { maximum: 50 }
  validates :lastname, presence: true, length: { maximum: 50 }
  validates :rank, presence: true
  enum :rank, { feuerwehrmann: 0, geraetewart: 1, chef: 2 }

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def full_name
    "#{firstname} #{lastname}"
  end

  private
    def password_changed?
      new_record? || password.present?
    end
end
