class Person < ActiveRecord::Base
  validate :name, presence: true, length: {minimum: 1}
  validate :trash_score, presence: true
  validate :clean_score, presence: true
  validate :country_team
end
