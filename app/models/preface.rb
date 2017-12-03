class Preface < ApplicationRecord
  has_many :sections
  has_one :lesson

  accepts_nested_attributes_for :sections
end
