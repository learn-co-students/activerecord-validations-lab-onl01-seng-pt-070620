class ClickBaitValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title.nil? || record.title.match?(/True Facts | Won't Believe | Guess | Top 0-9*/) 
            record.errors[:title] << "Those titles are certainly clickbait-y" 
        end
    end
end
