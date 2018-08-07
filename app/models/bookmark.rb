class Bookmark < ApplicationRecord
  validates :url, presence: true, length: { in: 3..3000 }, allow_blank: false
end
