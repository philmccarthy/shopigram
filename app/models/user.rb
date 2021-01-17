class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  has_secure_password

  has_many_attached :images

  def self.community
    joins(:images_attachments)
      .group(:id)
      .having("COUNT(active_storage_attachments) >= 3")
      .order(Arel.sql("RANDOM()"))
      .first(5)
  end
end
