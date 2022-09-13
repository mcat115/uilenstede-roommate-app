class Person < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1}
  validates :trash_score, presence: true
  validates :clean_score, presence: true
  validates :country_team
end
