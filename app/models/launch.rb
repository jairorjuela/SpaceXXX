class Launch < ApplicationRecord
  validates :article, :video, :success, :name, :image, presence: true
end
