class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, length: { minimum: 250 }

end

# create_table "posts", force: :cascade do |t|
#   t.string   "title"
#   t.string   "category"
#   t.text     "content"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
