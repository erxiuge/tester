class Gift
  include Mongoid::Document

  embedded_in :wedding

  field :name, type: String
  field :quantity, type: Integer
end
