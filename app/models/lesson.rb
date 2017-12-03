class Lesson < ApplicationRecord
  has_one :craft
  has_one :exercise
  has_one :homework
  has_one :preface
  has_one :primary
  accepts_nested_attributes_for :preface
  accepts_nested_attributes_for :primary
  accepts_nested_attributes_for :exercise
  accepts_nested_attributes_for :homework
end
