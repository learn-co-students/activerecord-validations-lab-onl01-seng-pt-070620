class TitleValidator < ActiveModel::Validator
    def validate(record)
        if !record.title.match?(/Won't Believe|Secret|Top [0-9]*|Guess/)
            record.errors[:email] << "The title must be clickbaity!"
        end
    end
end