class Post < ApplicationRecord
  belongs_to :author
  has_many :elements

  # published nil because they all are nil by default
  # and there is no published handling
  scope :published, -> do
    where(published: nil)
  end

  has_one_attached :header_image
end
