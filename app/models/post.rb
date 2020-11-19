class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with ClickBaitValidator

    validates :title, presence: true
    validates :content, length: {minimum: 10}
    validates :summary, length: {maximum: 50}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is no Fiction or Non-Fiction" }
    # validates :category, acceptance: true 
end
