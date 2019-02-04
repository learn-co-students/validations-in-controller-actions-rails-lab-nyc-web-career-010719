class Author < ActiveRecord::Base
  validates :name,presence: {message: 'missing name'}
  validates :email,uniqueness:{message: "email exists"}

end
