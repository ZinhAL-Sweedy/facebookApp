class Comment < ApplicationRecord
  belongs_to :post , optional: true
  belongs_to  :user , optional: true
  acts_as_followable
  acts_as_likeable
end
