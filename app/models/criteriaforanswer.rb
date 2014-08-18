class Criteriaforanswer
  include Mongoid::Document
  field :text, type: String
  field :rating, type: Integer
  
  belongs_to :answer
end

