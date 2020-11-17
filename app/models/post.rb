class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction non-Fiction)}
    validate :non_clickbait
 
    def non_clickbait
        clickbait_words = ["Won't Believe", "Secret", "Top[number]", "Guess"]
        if title.present? && clickbait_words.detect {|w| title.include?(w) }.nil?
        # if title.present? && !(title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top [number]") || title.include?("Guess"))
            errors.add(:non_clickbait, "The title is invalid")
        end
    end
end
