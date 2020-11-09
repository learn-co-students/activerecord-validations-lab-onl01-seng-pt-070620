# class TitleValidator < ActiveModel::Validator
#     def validate(record)
#         if record.title
#             title_names = ["Won't Believe", "Secret", "Top [number]", "Guess"]
#             if title_names.detect {|title_name| record.title.include?(title_name)}.nil?
#                 record.errors[:title] << "Title name needs to be sufficiently clickbait-y"
#             end 
#         end
#     end
# end

# class Post
#     include ActiveModel::Validations
#     validates_with TitleValidator
# end
