class TitleValidator < ActiveModel::Validator 
    def validate(record)
       
        phrases = [/Won't Believe/, /Secret/, /Top[0-9]+/, /Guess/]
        unless phrases.any? {|phrase| record.title =~ phrase}
            record.errors[:title] << "Post not valid"
        end 
    end
end 