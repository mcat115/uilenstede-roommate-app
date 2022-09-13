class Person < ActiveRecord::Base
  validate :name, length: {minimum: 1}
  validate :trash_score
  validate :clean_score
  validate :country_team
end
