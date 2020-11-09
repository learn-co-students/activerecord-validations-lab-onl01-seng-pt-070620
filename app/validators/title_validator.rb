class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            false_titles = ["Won't Believe", "Secret", "Top [number]", "Guess"]
            if false_titles.detect {|t| record.title.include?(t)}.nil?
                record.errors[:title] << "This is clickbait"
            end
        end
    end
end