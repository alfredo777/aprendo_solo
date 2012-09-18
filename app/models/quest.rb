class Quest < ActiveRecord::Base
  has_many :answers
  belongs_to :topic
end
