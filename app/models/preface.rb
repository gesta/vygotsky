class Preface < ApplicationRecord
  has_many :sections
  belongs_to :lesson
end