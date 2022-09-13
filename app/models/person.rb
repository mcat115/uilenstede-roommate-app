class Person < ActiveRecord::Base
  validates :name, length: {minimum: 1}
  validates :trash_score
  validates :clean_score
  validates :country_team
end
