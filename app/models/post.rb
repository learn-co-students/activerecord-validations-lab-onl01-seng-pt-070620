class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with ClickbaitValidator
    validates :title, presence: true
    # validates :title, clickbait: true, inclusion: {in: %w(Won't Believe Secret Top[number] Guess)}
    validates :content, length: {is: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
