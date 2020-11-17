class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :bait_title

    CLICKBAIT = [
        "Won't Believe",
        "Secret",
        "Top [number]",
        "Guess"
    ]

    def bait_title
        if title.present? && CLICKBAIT.none? {|cb| title.match(cb)}
            errors.add(:title, "Your title isn't clickbait-y enough")
        end
    end
end
