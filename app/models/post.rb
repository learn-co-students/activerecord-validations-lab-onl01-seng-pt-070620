class Post < ActiveRecord::Base

    validates :title, presence: true
    validate :validate_clickbait?
    CLICKBAIT = [
        /Won't Believe/i,
        /Secret/i,
        /Top [0-9]*/i,
        /Guess/i
       ]

       def validate_clickbait?
            if CLICKBAIT.none?{|t| t.match title}
                errors.add(:title, ("this is clickbait"))
            end
        end
 

    validates :content, length: { minimum: 250 }

    validates :summary, length: { maximum: 250 }

    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

end
