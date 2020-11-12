class MyValidator < ActiveModel::Validator
    def validate(record)
      if record.title 
        unless record.title.match?(/(You|Won't Believe|Secret|Top \d|Guess)/)
          record.errors[:title] << 'Title must be click bait-y'
        end
      end
    end
  end 