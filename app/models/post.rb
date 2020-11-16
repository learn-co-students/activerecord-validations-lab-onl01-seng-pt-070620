class Post < ActiveRecord::Base
    validates :title, presence:true
    validates_length_of :content, minimum:250
    validates_length_of :summary, maximum:250
    validates :category, inclusion:{in: %w(Fiction Non-Fiction)}
    validate :title_sufficiently_clickbaity


    def title_sufficiently_clickbaity
         # msgs = ["Won't Believe", "Secret", "Top"+"#[1..999]" "Guess"]
        err_flag = true
        @title = self.title
        if @title != nil
            title_string = @title.split
            if @title.include?("Won't Believe") || @title.include?("Secret") || @title.include?("Guess")
                err_flag = false
            elsif @title.include?("Top")
                i = @title.index("Top")
                binding.pry
                if title_string(i+4).to_i > 0
                    err_flag = false 
                end
            else
                err_flag = true
            end
        else # @title == nil
            err_flag = true
        end
        
        if err_flag == true
            errors.add(:title, "not clickbaity enough")
        end
    end
end
