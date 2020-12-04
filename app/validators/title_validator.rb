class TitleValidator < ActiveModel::Validator
    def validate(record)
      unless record.title.include?("Won't Believe"||"Secret"||/Top[0-9]*/i||"Guess")
        record.errors[:title] << "This is not clickbait"
      end
    end
  end