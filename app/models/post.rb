# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#
class Post < ApplicationRecord
  belongs_to(:user)
  belongs_to(:board)
  validates(:title, presence: true)
  validates(:body, presence: true)
  validates(:expires_on, presence: true)
  validates(:user_id, presence: true)
end
