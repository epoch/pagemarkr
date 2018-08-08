class Bookmark < ApplicationRecord
  validates :url, 
    presence: true, 
    length: { in: 3..3000 }, 
    allow_blank: false

  def self.recently_added
    where(archived: false).order(:created_at => :desc).limit(3)
  end

  def self.archived
    where(archived: true)
  end

  def self.neglected
    where(click_count: 0)
  end
end
