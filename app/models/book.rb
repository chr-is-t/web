#class Book < ActiveRecord::Base
#	belongs_to :student, foreign_key: "student_id"
#end









class Book < ApplicationRecord
  belongs_to :student
end