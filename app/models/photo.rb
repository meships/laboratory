class Photo < ApplicationRecord
    has_many_attached :images
    has_many :photo_comments, dependent: :destroy

    belongs_to :daily_report
end
