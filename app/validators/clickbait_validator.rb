class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.include?("Won't Believe" || "Secret" || "Top [number]" ||"Guess")
            record.errors[:title] << "Not clickbait"
        end
    end
end