class MyValidator < ActiveModel::Validator
    def validate(record)
      if record.title 
        unless record.title.match?(/You Won't Believe These True Facts/m)
          record.errors[:title] << 'Title must be click bait-y'
        end
      end
    end
  end 