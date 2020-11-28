class Post < ActiveRecord::Base

    include ActiveModel::Validations
    

    validates :title, presence: true
    validates_with TitleValidator
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

 
    # validate :title_must_be_clickbait
 

    # def title_must_be_clickbait
    #     if title.present? && title != ("Won't Believe") || ("Secret") || ("Top [number]") || ("Guess")
    #       errors.add(:title, "must be clickbait!")
    #     end
    # end

   
    
end
