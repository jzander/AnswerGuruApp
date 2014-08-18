class Answer
  include Mongoid::Document
  field :text, type: String
  field :rating, type: Integer
  
  belongs_to :decision
  
end
