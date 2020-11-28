class TitleValidator < ActiveModel::Validator

  

  def validate(record)
    
    unless record.title.to_s.include?("Won't Believe")
      record.errors[:title] << "Title must be clickbait!"
    end

  end



end