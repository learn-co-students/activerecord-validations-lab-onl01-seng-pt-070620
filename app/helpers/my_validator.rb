class MyValidator < ActiveModel::MyValidator
def validate(record)
if record.title
    reqs = ["Won't Believe", "Secret", "Top[number]", "Guess"]
    if reqs.detect {|e|record.title.include?(el) }.nil?
    record.errors[:title] << "Must contain clickbait"
end
end
end
end