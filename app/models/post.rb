class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    # validates :title_clickbait

    # CLICKBAIT_TITLES = [
    #     "Won't Believe", 
    #     "Secret", 
    #     "Top [number]", 
    #     "Guess"
    # ]

    # def title_clickbait
    #     if title.present? && CLICKBAIT_TITLES.none? {|bait| title.match(bait)}
    #         errors.add(:title, "Title name needs to be sufficiently clickbait-y")
    #     end
    # end

    validate :title_must_be_clickbait

    def title_must_be_clickbait
      if title && !title.include?("Won't Believe" || "Secret" ||
        "Top [number]" || "Guess")
        errors.add(:title, "Must be clickbait-y")
      end
    end

end
