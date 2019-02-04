class Post < ActiveRecord::Base
  validates :title,presence:{message: 'missing title'}
  validates :category, inclusion: { in: %w( Fiction  Non-Fiction),
   message: "not a valid category" }
   validates :content,length:{minimum:100,message:'too short'}
     # error: "content too short"}
end
