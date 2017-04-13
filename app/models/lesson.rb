class Lesson < ApplicationRecord
  has_one :craft
  has_one :exercise
  has_one :homework
  has_one :preface
  has_one :primary
end
