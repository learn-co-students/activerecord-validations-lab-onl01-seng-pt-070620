class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.include?{%w("Won't Believe" "Secret" "Top [number]" "Guess")}
            record.errors[:title] 
        end
    end
end